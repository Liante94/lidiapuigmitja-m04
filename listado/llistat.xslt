<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>

	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="../css/style.css" />
	</head>
	
	<body>

		<div id="container">
	
      <section id="fix">
        <header>
          <img id="imgLogo" alt="Logo Delicias Kitchen" src="../imagenes/delicias.png"/>
          </header>	
    
        <div class="clearfix"></div>
    
        <nav>
              <a href="../index.html">INICIO</a>
              <a href="../construccion/construccion.html">SOBRE MÍ</a>
              <a href="../listado/llista.xml">RECETAS</a>
              <a href="../contacto/contacto.html">CONTACTO</a>
              <a href="../construccion/construccion.html">OTRAS COSAS</a>       
        </nav>
      
      </section>
    
    

		<div class="clearfix"></div>

        <section id="content">

      <article class="titulo">
			
        <h3>LISTADO DE RECETAS</h3>
        
			</article>

    <xsl:for-each select="catalog/receta">
      <article class="lista" id="sub">
        <div>
        <div class="parti3">
				<xsl:element name="img">
   <xsl:attribute name="src">
      <xsl:value-of select="imagen/@ruta"/>
   </xsl:attribute>
   <xsl:attribute name="height">90</xsl:attribute>
</xsl:element>
</div>
<div class="parti2" id="titulin">
<a>
  <xsl:attribute name="href">
    <xsl:value-of select="title/@enlace"/>
  </xsl:attribute>
  <xsl:value-of select="title"/>
</a>

</div>

<div class="parti2">
        <div>
        <xsl:value-of select="tiempo"/>
        </div>
        <div>
      <xsl:value-of select="dificultad"/>
      </div>
      <div>
      <xsl:value-of select="tipo"/>
      </div>
    </div>
</div> 
          </article>
</xsl:for-each>

 </section>

            <aside>

                <div class="flip-card">
                    <div class="flip-card-inner">
                      <div class="flip-card-front">
                        <img id="publi" alt="Concurso" src="../imagenes/Concurs de Receptes.jpg"/>
                      </div>
                      <div class="flip-card-back">
                        <h3><a class="publi" href="#Apuntame">Apúntame al Concurso!</a></h3>
                      </div>
                    </div>
                  </div>
        
            </aside>
        
            <div class="clearfix"></div>
                <footer>			
                    <a class="pie" href="https://ca-es.facebook.com/">FACEBOOK</a>
                    <a class="pie" href="https://twitter.com/?lang=ca">TWITTER</a>
                    <a class="pie" href="https://www.instagram.com/">INSTAGRAM</a>
                    <a class="pie" href="https://www.pinterest.es/">PINTEREST</a>
                    <a class="pie" href="mailto:inventadoisagil@gmail.com?Subject=Interesado%20en%20el%20blog">EMAIL</a>
                    <a class="pie" href="https://rss.com/">RSS</a>
                </footer>
        
            </div>

</body>
</html>
</xsl:template>
</xsl:stylesheet>