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
    <xsl:for-each select="plat/nom">
      <article id="receta">
      <h2><xsl:value-of select="title"/></h2>
			<p><xsl:value-of select="descripcio"/></p>
        </article>

<article id="seccio">

          <div class="parti">
          <xsl:element name="img">
            <xsl:attribute name="src">
            <xsl:value-of select="imagen/@ruta"/>
            </xsl:attribute>
            <xsl:attribute name="width">500px</xsl:attribute>
            <xsl:attribute name="align-items">center</xsl:attribute>
            <xsl:attribute name="margin-bottom">10px</xsl:attribute>
        </xsl:element>
            
          </div>

          <div class="parti" id="sub">

          <xsl:for-each select="info">
          <h5><xsl:value-of select="prep"/></h5>
          <h5><xsl:value-of select="coc"/></h5>
          <h5><xsl:value-of select="tiemp"/></h5>
          <h5><xsl:value-of select="rac"/></h5>
        </xsl:for-each>
          
        </div>

</article>

<article id="seccioDos">
          <div class="parti">
          <h4>Ingredientes</h4>
          <ul>
          <xsl:for-each select="ingredientes/ingredient">
          <li>
          <xsl:value-of select="."/>
          </li>
          </xsl:for-each>
          </ul>
        </div>

        <div class="parti">
        <h4>Pasos</h4>

        <ol>
           <xsl:for-each select="pasos/pas">
          <li>
          <xsl:value-of select="."/>
          </li>
          </xsl:for-each>
        </ol>
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