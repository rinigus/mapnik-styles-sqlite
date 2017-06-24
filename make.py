#!/usr/bin/env python
# -*- coding: utf-8 -*-

import re
import sys
import os, shutil

from os import unlink
from json import loads, dumps
from glob import glob
from shutil import rmtree
from os.path import join, isdir, expanduser, exists
from collections import defaultdict

if not exists('./configure.py'):
    sys.stderr.write('Error: configure.py does not exist, did you forget to create it from the sample (configure.py.sample)?\n')
    sys.exit(1)
elif exists('./configure.pyc'):
    unlink('./configure.pyc')

from configure import config
from lib.utils import copy_tree

config["path"] = expanduser(config["path"])

def clean():
  if isdir("build"):
    rmtree("build")

  for f in glob("build/*.html"): unlink(f)

def build(style):
  shutil.copytree(style, "build")
  #copy_tree(style, "build")

  #remove the mml templates
  for f in glob("build/*.mml"):
    unlink(f)

  #load the project template
  templatefile = open(join(style, '%s.mml' % config["importer"]))
  template = loads(templatefile.read())

  #fill in the project template
  for layer in template["Layer"]:
    if layer["id"] == "land-low":
      layer["Datasource"]["file"] = config["land-low"]
    elif layer["id"] == "land-high":
      layer["Datasource"]["file"] = config["land-high"]
    elif layer["id"] == "ne_places":
      layer["Datasource"]["file"] = config["ne_places"]
    else:
      # Assume all other layers are Sqlite layers
      for opt, val in config["sqlite"].iteritems():
        if (val == ""):
          if (opt in layer["Datasource"]):
            del layer["Datasource"][opt]
        else:
          layer["Datasource"][opt] = val

  template["name"] = config["name"]

  #dump the filled-in project template to the build dir
  with open(join('build', 'project.mml'), 'w') as output:
    output.write(dumps(template, sort_keys=True, indent=2))

def install(style):
  assert isdir(config["path"]), "Config.path does not point to your mapbox projects directory; please fix and re-run"
  sanitized_name = re.sub("[^\w]", "", config["name"][style])
  output_dir = join(config["path"], sanitized_name)
  print "installing to %s" % output_dir
  copy_tree("build", output_dir)

  os.system("cd " + output_dir + "; carto project.mml > mapnik.xml")

if __name__ == "__main__":
    for style in config["name"]:
        print style
        clean()
        build(style)
        install(style)
