## Alfresco Vector Transformations Module

### Introduction
This module adds transformation support for vector file types including SVG (Scalable Vector Graphics) and DWG (AutoCAD).

### Announcement

![](http://loftux.se/files/.thumbs/blog_images/20150209_vector_transformations/720x400e/blog_image.006.jpg)

For the official announcement from [Loftux AB](http://www.loftux.se?ref=avt-git), please see the following blog post.  
 
 - [http://loftux.se/en/blog/announcing-alfresco-vector-transformations-module](http://loftux.se/en/blog/announcing-alfresco-vector-transformations-module)

### Supported Transformations
- DWG to PNG
- DWG to SVG
- SVG to PNG

### Prerequisites
- rsvg-convert ([http://webadventures.at/2012/04/29/convert-svg-png/](http://webadventures.at/2012/04/29/convert-svg-png/))
- QCad with terminal tools ([http://www.qcad.org/en/qcad-downloads-trial](http://www.qcad.org/en/qcad-downloads-trial))

### Adding to your existing Alfresco Project

1. Build the project and install it on your local Maven repository using `mvn clean install`
2. Add the following as a dependency in your repository AMP module.
  
    ```xml
    <dependency>
        <groupId>se.loftux.modules.vector-transformations</groupId>
        <artifactId>repo-amp</artifactId>
        <version>1.0-SNAPSHOT</version>
        <type>amp</type>
    </dependency>  
    ```

* Add additional overlay configurations necessary based on the Maven archetype being in the project.

### Configuration
1. Copy `dwg2bmp_alfresco_fallback` and `dwg2svg_alfresco_fallback` in containing folder for dwg2bmp and dwg2svg from QCad.
2. Specify paths in `alfresco-global.properties`

*Example configuration:*
	
	#DWG -> PNG, SVG
	dwg-convert.dir=/Applications/QCAD.app/Contents/Resources
	dwg-convert.exe=${dwg-convert.dir}/dwg2bmp_alfresco_fallback
	dwg-svg-convert.exe=${dwg-convert.dir}/dwg2svg_alfresco_fallback
	content.transformer.Dwg2png.extensions.dwg.png.supported=true
	content.transformer.Dwg2svg.extensions.dwg.svg.supported=true

	#SVG -> PNG
	svg-png-convert.dir=/usr/local/bin
	svg-png-convert.exe=${svg-png-convert.dir}/rsvg-convert
	content.transformer.Svg2png.extensions.svg.png.supported=true
	
###Frequently Asked Questions
__How can I improve the quality of the transformations from DWG to PNG?__  
You can try removing the direct transformation from DWG to PNG and creating DWG -> SVG -> PNG chain.

__Does[ Zoomable for Alfresco](https://loftux.com/en/blog/announcing-the-zoomable-image-viewer-for-alfresco) come bundled with this module?__  
No. [Zoomable for Alfresco](https://loftux.com/en/products-and-add-ons/alfresco-add-ons/zoomable-for-alfresco) is not available with this module. However, Zoomable for Alfresco will include Alfresco Vector Transformations module.  

For more information on Zoomable for Alfresco, please [contact](https://loftux.com/en/contact) Loftux AB.

### Contributing

Please feel free to contribute your transformations back in to this project. 

If you notice any issues, please feel free to fork and contribute a pull request or file an issue.

### License

Please see LICENSE.md

### Author
- Bhagya Silva ([http://www.about.me/bhagyas](http://www.about.me/bhagyas)), Software Architect, Loftux AB ([http://www.loftux.com](http://www.loftux.com)).

### Sponsored By

Loftux AB (English) [https://loftux.com](https://loftux.com/en/?ref=avt-github "loftux.com") /
Loftux AB (Swedish/Svenska) [https://loftux.se](https://loftux.se/?ref=avt-github "loftux.com")

[![Loftux AB](https://loftux.se/themes/loftux_theme/assets/images/loftux-logo/logo-loftux-prefixed-small.png?ref=avt-github)](https://loftux.com?ref=avt-github)
