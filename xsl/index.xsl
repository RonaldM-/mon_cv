<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes">

</xsl:output>

<xsl:template match="/">
    <html>

        <head>

        	<link type="text/css" rel="stylesheet" href="css/style.css"/>
            <link type="text/css" rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css"/>
            <!-- <link type="text/css" rel="stylesheet" href="bootstrap-3.3.6-dist/css/scrolling-nav.css"/> -->
                
            <title>Cv</title>

        </head>
        <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

                <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                    <div class="container">
                        <div class="navbar-header page-scroll">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand page-scroll" href="#page-top">Ronald MARCEL</a>
                        </div>

                        <div class="collapse navbar-collapse navbar-ex1-collapse">
                            <ul class="nav navbar-nav">
                                <li class="hidden">
                                    <a class="page-scroll" href="#about">À Propos</a>
                                </li>
                                <li>
                                    <a class="page-scroll" href="#experiences">Expériences</a>
                                </li>
                                <li>
                                    <a class="page-scroll" href="#formations">Formation</a>
                                </li>
                                <li>
                                    <a class="page-scroll" href="#competences">Compétences</a>
                                </li>
                                <li>
                                    <a class="page-scroll" href="#divers">Divers</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>


            <section id="intro" class="intro-section">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="identite">
                                <div class="profil-img">
                                    
                                </div>
                                <h1 class="nom"><xsl:value-of select="Cv/Personne/section/identite/prenom"/></h1>
                                <div class="prenom"><xsl:value-of select="Cv/Personne/section/identite/nom"/></div>
                                <div class="age"><xsl:value-of select="Cv/Personne/section/identite/age"/></div>
                                <div class="voiture"><xsl:value-of select="Cv/Personne/section/identite/permis"/></div>
                            </div>
                            <div class="coordonnee">
                                <div class="adresse"><xsl:value-of select="Cv/Personne/section/identite/adresse"/></div>
                                <div class="telephone"><xsl:value-of select="Cv/Personne/section/identite/telephone"/></div>
                                <div class="email"><xsl:value-of select="Cv/Personne/section/identite/email"/></div>

                            <p class="col-lg-12">
                            Curieux et passionné par les nouvelles technologies et l’informatique, en veille perpétuelle.
J’aime le partage des connaissances et je suis ouvert d’esprit.
                            </p>

                            </div>
                        </div>
                    </div>
                </div>
            </section>

                <!-- Section À Propos -->

  <!--           <section id="about" class="about-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>apropo Section</h1>
                        </div>
                    </div>
                </div>
            </section> -->

                <!-- Section EXPÉRIENCES PROFESSIONNELLES -->

            <section id="experiences" class="experiences-section">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            
                            <h1>Experiences Section</h1>
                            <xsl:for-each select="Cv/experience/section/poste">
                                <article class="blocs exp">
                                    <div class="date"><xsl:value-of select="date"/></div>
                                    <div class="entreprise"><xsl:value-of select="entreprise"/></div>
                                    <div class="lieu"><xsl:value-of select="lieu"/></div>
                                    <div class="descriptif"><xsl:value-of select="descriptif"/></div>
                                </article>
                            </xsl:for-each>
                        </div>
                    </div>
                </div>
            </section>

                <!-- Section FORMATIONS -->

            <section id="formations" class="formations-section">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>Formations Section</h1>
                            <xsl:for-each select="Cv/formations/section/formation">
                                <article class="blocs forma">
                                    <div class="date"><xsl:value-of select="date"/></div>
                                    <div class="intitule"><xsl:value-of select="intitule"/></div>
                                    <div class="niveau"><xsl:value-of select="niveau"/></div>
                                    <div class="organisme"><xsl:value-of select="organisme"/></div>
                                    <div class="lieu"><xsl:value-of select="lieu"/></div>
                                </article>
                            </xsl:for-each>
                        </div>
                    </div>
                </div>
            </section>

                <!-- Section COMPETENCES -->

            <section id="competences" class="competences-section">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                                
                            <h1>compétence Section</h1>
                            <xsl:for-each select="Cv/competences/section/competence">
                                <article class="forma">
                                    
                                    <div class="langage"><xsl:value-of select="langage"/></div>
                                    <div class="niveau"><xsl:value-of select="niveau"/></div>
                                    
                                </article>
                            
                            </xsl:for-each>
                        </div>
                    </div>
                </div>
            </section>

                <!-- Section DIVERS -->

            <section id="divers" class="divers-section">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            
                            <h1>Divers Section</h1>

                                <div class="blocs dvrs">
                                    <xsl:for-each select="Cv/divers/section">
                                    <div class="language"><xsl:value-of select="langue"/></div>
                                    <div class="loisir"><xsl:value-of select="loisirs"/></div>
                                    </xsl:for-each>
                                </div>
                            
                        </div>
                    </div>
                </div>
            </section>

            <!-- jQuery -->
            <script src="bootstrap-3.3.6-dist/js/jquery.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>

            <!-- Scrolling Nav JavaScript -->
            <script src="bootstrap-3.3.6-dist/js/jquery.easing.min.js"></script>
            <script src="bootstrap-3.3.6-dist/js/scrolling-nav.js"></script>
        </body>

    </html>  

</xsl:template>
</xsl:stylesheet>