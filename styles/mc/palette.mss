
/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { }

/* set up font sets for various weights and styles */
// @sans_lt:       "Open Sans Regular", "DejaVu Sans Book";
// @sans_lt_italic:    "Open Sans Italic", "DejaVu Sans Oblique";

// @sans:          "Open Sans Semibold", "DejaVu Sans Book";
// @sans_italic:   "Open Sans Semibold Italic",  "DejaVu Sans Oblique";

// @sans_bold:  "Open Sans Bold", "DejaVu Sans Bold";
// @sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Oblique", "DejaVu Sans Oblique";

//@sans_lt:       @regular;
//@sans_lt_italic:  @italic;

@sans:          'Noto Naskh Arabic Regular', 'Noto Sans Regular', 'Noto Sans Armenian Regular', 'Noto Sans Balinese Regular', 'Noto Sans Bengali Regular', 'Noto Sans Devanagari Regular', 'Noto Sans Ethiopic Regular', 'Noto Sans Georgian Regular', 'Noto Sans Gujarati Regular', 'Noto Sans Gurmukhi Regular', 'Noto Sans Hebrew Regular', 'Noto Sans JP Regular', 'Noto Sans Javanese Regular', 'Noto Sans KR Regular', 'Noto Sans Kannada Regular', 'Noto Sans Khmer Regular', 'Noto Sans Lao Regular', 'Noto Sans Mongolian Regular', 'Noto Sans Myanmar Regular', 'Noto Sans Oriya Regular', 'Noto Sans SC Regular', 'Noto Sans Sinhala Regular', 'Noto Sans TC Regular', 'Noto Sans Tamil Regular', 'Noto Sans Thai Regular', 'Noto Sans Tibetan Regular', 'Noto Sans Tifinagh Regular';
@sans_bold:   'Noto Naskh Arabic Bold', 'Noto Sans Bold', 'Noto Sans Armenian Bold', 'Noto Sans Bengali Bold', 'Noto Sans Devanagari Bold', 'Noto Sans Ethiopic Bold', 'Noto Sans Georgian Bold', 'Noto Sans Gujarati Bold', 'Noto Sans Gurmukhi Bold', 'Noto Sans Hebrew Bold', 'Noto Sans JP Bold', 'Noto Sans KR Bold', 'Noto Sans Kannada Bold', 'Noto Sans Khmer Bold', 'Noto Sans Lao Bold', 'Noto Sans Myanmar Bold', 'Noto Sans Oriya Bold', 'Noto Sans SC Bold', 'Noto Sans Sinhala Bold', 'Noto Sans TC Bold', 'Noto Sans Tamil Bold', 'Noto Sans Thai Bold', 'Noto Naskh Arabic Regular', 'Noto Sans Regular', 'Noto Sans Armenian Regular', 'Noto Sans Balinese Regular', 'Noto Sans Bengali Regular', 'Noto Sans Devanagari Regular', 'Noto Sans Ethiopic Regular', 'Noto Sans Georgian Regular', 'Noto Sans Gujarati Regular', 'Noto Sans Gurmukhi Regular', 'Noto Sans Hebrew Regular', 'Noto Sans JP Regular', 'Noto Sans Javanese Regular', 'Noto Sans KR Regular', 'Noto Sans Kannada Regular', 'Noto Sans Khmer Regular', 'Noto Sans Lao Regular', 'Noto Sans Mongolian Regular', 'Noto Sans Myanmar Regular', 'Noto Sans Oriya Regular', 'Noto Sans SC Regular', 'Noto Sans Sinhala Regular', 'Noto Sans TC Regular', 'Noto Sans Tamil Regular', 'Noto Sans Thai Regular', 'Noto Sans Tibetan Regular', 'Noto Sans Tifinagh Regular';
@sans_italic:  'Noto Sans Italic', 'Noto Naskh Arabic Regular', 'Noto Sans Regular', 'Noto Sans Armenian Regular', 'Noto Sans Balinese Regular', 'Noto Sans Bengali Regular', 'Noto Sans Devanagari Regular', 'Noto Sans Ethiopic Regular', 'Noto Sans Georgian Regular', 'Noto Sans Gujarati Regular', 'Noto Sans Gurmukhi Regular', 'Noto Sans Hebrew Regular', 'Noto Sans JP Regular', 'Noto Sans Javanese Regular', 'Noto Sans KR Regular', 'Noto Sans Kannada Regular', 'Noto Sans Khmer Regular', 'Noto Sans Lao Regular', 'Noto Sans Mongolian Regular', 'Noto Sans Myanmar Regular', 'Noto Sans Oriya Regular', 'Noto Sans SC Regular', 'Noto Sans Sinhala Regular', 'Noto Sans TC Regular', 'Noto Sans Tamil Regular', 'Noto Sans Thai Regular', 'Noto Sans Tibetan Regular', 'Noto Sans Tifinagh Regular';

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #00415F;
@water:             #011422;
@grass:             #00867F;
@park:              #007888;
@cemetery:          #3C5D61; /* proposed */
@wooded:            #00516B;

@building:          #2A6381;
@hospital:          #143A6A; //293475;
@school:            #547B95;
@sports:            #01B2AA;

@residential:       @land * 1.02;
@commercial:        @land * 1.03;
@industrial:        @land * 1.04;
@parking:           @land * 1.02;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_fill:     #000;
@motorway_case:     #24E2FF;
@motorway_line:     mix(@motorway_case, @motorway_fill, 70);
@motorway_shield_fill: #fff;

@trunk_fill:        #000;
@trunk_case:        #1FB7D9;
@trunk_line:        mix(@trunk_case, @trunk_fill, 70);

@primary_fill:      @trunk_fill;
@primary_line:      @trunk_line;
@primary_case:      @trunk_case;

// @secondary_line:    @land*0.8;
// @secondary_fill:    #FFFFFF;
// @secondary_case:    @secondary_line;

@secondary_line:    #000;
@secondary_fill:    @trunk_fill;
@secondary_case:    @trunk_case;

@standard_fill:     mix(#000, @land, 70);
@standard_case:     mix(@trunk_case, @land, 50);
@standard_line:     @standard_fill;

@noauto_fill:       mix(#000, @land, 50);
@noauto_case:       mix(@standard_case, @land, 50);

// @pedestrian_line:   @standard_line;
@pedestrian_fill:   #00415F;
// @pedestrian_case:   @land;

@path_line:  	    #000;
@cycleway_line:     mix(@trunk_case, #B42EFF, 50); //#B42EFF;

// @cycle_line:        @standard_line;
// @cycle_fill:        #FAFAF5;
// @cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         fadeout(@land,50%);
// @rail_fill:         #fff;
// @rail_case:         @land;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

@fence_color:       #aab;
@barrier_point:     #c7c7c7;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#000,34%);

@country_text:      #fff;
@country_halo:      @place_halo;

@state_text:        #fff;
@state_halo:        @place_halo;

@city_text:         #fff;
@city_halo:         @place_halo;

@town_text:         #fff;
@town_halo:         @place_halo;

@poi_text:          #fff;

@area_text:	    @poi_text;
@area_halo:         @place_halo;

@road_text:         #fff;
@road_halo:         #000;

@other_text:        #fff;
@other_halo:        @place_halo;

@locality_text:     #fff;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #fff;
@village_halo:      @place_halo;

/* For POIs and other styles from standard map*/
@standard-halo-radius:  1;
@standard-halo-fill: rgba(0,0,0,0.6);
@standard-wrap-width: 30;
@standard-text-size: 10;
@standard-font: @sans;
@book-fonts: @sans;
@bold-fonts: @sans_bold;
@standard-poi-font: @book-fonts;

@water-color: @water;
@airtransport: #8461C4;

// POI colors
// Colors and corresponding IDs in the database
@amenity-brown:  #1DC2DF; 	// 0
@health-color: #767CCE;		// 1
@landform-color: #d08f55;	// 2
@transportation-icon: #0092da;	// 3
@shop-icon: #6196DA;		// 4

/* ****************************************************************** */



