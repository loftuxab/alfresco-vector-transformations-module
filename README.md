## Alfresco Vector Transformations Module

### Introduction
This module adds transformation support for vector file types including SVG and DWG (AutoCAD)

### Announcement

![](http://loftux.se/files/.thumbs/blog_images/20150209_vector_transformations/720x400e/blog_image.006.jpg)

For the official announcement from [Loftux AB](http://www.loftux.se?ref=avt-git), please see the following blog post.  
 
 - [http://loftux.se/en/blog/announcing-alfresco-vector-transformations-module](http://loftux.se/en/blog/announcing-alfresco-vector-transformations-module)

### Supported Transformations
- DWG to PNG
- DWG to SVG
- SVG to PNG

#### Requirements
- rsvg-convert ([http://webadventures.at/2012/04/29/convert-svg-png/](http://webadventures.at/2012/04/29/convert-svg-png/))
- QCad with terminal tools ([http://www.qcad.org/en/qcad-downloads-trial](http://www.qcad.org/en/qcad-downloads-trial))

### Installation
- Copy `dwg2bmp_alfresco_fallback` and `dwg2svg_alfresco_fallback` in containing folder for dwg2bmp and dwg2svg from QCad.
- Specify paths in alfresco-global.properties

### Contributing

Please feel free to contribute your transformations back in to this project.

### License

Please see LICENSE.md

### Author
- Bhagya Silva ([http://www.about.me/bhagyas](http://www.about.me/bhagyas)), Software Architect, Loftux AB ([http://www.loftux.com](http://www.loftux.com)).