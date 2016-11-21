<%-- 
    Document   : rapport
    Created on : Nov 10, 2016, 4:27:45 PM
    Author     : Asger
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Rapport</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/rapportCss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="container">
            <div class="pages">
                <img src="images/PolygonLogo.jpg" alt="polygon logo" class="polygologo"> 
                <img src="images/SundeBygningerLogo.jpg" alt="sundebygninger logo" class="sundebygningerlogo">
                <div class="clear"></div>

                <div class="rapportNr" id="firstRapportNR">
                    <form action="#" method="GET">
                        <span>Rapport nr.:</span>
                        <input type="text" name="rapportnr"> 
                    </form>    
                </div>
                <h1 align="center">Bygningsgennemgang</h1>

                <div id="addressform">
                    <form action="#" method="GET">
                        <div class="left">
                            <input type="text" name="nameOnBuilding">
                            <div class="border-bot"></div>
                            <p>Navn på bygning</p>
                            <input type="text" name="address"> 
                            <div class="border-bot"></div>
                            <p>Adresse</p>
                            <input type="text" name="zipCity">
                            <div class="border-bot"></div>
                            <p>Postnr./By</p>
                        </div>
                        <div class="left">
                            <input type="text" name="date">
                            <div class="border-bot"></div>
                            <p>Dato</p>
                        </div>
                        <img class="left" src="images/PolygonKontaktInfo.jpg" alt="kontakt info">
                        <div class="clear"></div>
                    </form>
                </div>
                <div id="upload-picture">
                    <p>(Indsæt billede af bygningen udefra)</p>
                    <form action="#" method="post">
                        <input type="file" name="pictureOfBuilding" id="pictureOfBuilding">
                        <input type="submit" name="submit" value="Upload Image">
                    </form>
                </div>
                <div id="general-building-info">
                    <h2>General information om bygningen</h2>
                    <form action="#" method="get">
                        <div>
                            <p>Byggeår</p>
                            <input type="text" name="buildYear">
                            <div class="border-bot"></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <p>Bygningsareal i &#x33a1; (hver etage tælles separat)</p>
                            <input type="text" name="buildingArea">
                            <div class="border-bot"></div>
                            <div class="clear"></div>                            
                        </div>
                        <div>
                            <p>Hvad bruges bygningen til / Hvad har bygningen været brugt til?</p>
                            <input type="text" name="buildingUse">
                            <div class="border-bot"></div>
                            <div class="clear"></div>
                        </div>
                    </form>
                </div>
                <div id="examination-building-outside">
                    <h2>Gennemgang af bygningen udvendig</h2>
                    <div>
                        <form action="#" method="post">
                            <table cellspacing="0">
                                <tr>
                                    <th rowspan="2">Tag</th>
                                    <th>Bemærkninger</th>
                                    <th>Ingen bemærkninger</th>
                                    <th>Billede</th>
                                </tr>
                                <tr>
                                    <th><input type="checkbox" name="comments"></th>
                                    <th><input type="checkbox" name="noComments"></th>
                                    <th><input type="checkbox" name="picture"></th>
                                </tr>
                                <tr>
                                    <th colspan="4"><textarea name="roofDescription"></textarea></th>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <div>
                        <form action="#" method="post">
                            <table cellspacing="0">
                                <tr>
                                    <th rowspan="2">Ydervægge</th>
                                    <th>Bemærkninger</th>
                                    <th>Ingen bemærkninger</th>
                                    <th>Billede</th>
                                </tr>
                                <tr>
                                    <th><input type="checkbox" name="comments"></th>
                                    <th><input type="checkbox" name="noComments"></th>
                                    <th><input type="checkbox" name="picture"></th>
                                </tr>
                                <tr>
                                    <th colspan="4"><textarea name="wallDescription"></textarea></th>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
                <div class="pageNr">
                    <p>1</p>
                </div>
                <div class="clear"></div>
            </div><!--pageOne end-->
            
            <div class="pages">
                <img src="images/PolygonLogo.jpg" alt="polygon logo" class="polygologo">
                <div class="clear"></div>

                <div class="rapportNr">
                    <form action="#" method="GET">
                        <span>Rapport nr.:</span>
                        <input type="text" name="rapportnr"> 
                    </form>    
                </div>
                
                <div id="room-info">
                    <form action="#" method="get">
                        <div>
                            <p>Lokale</p>
                            <input type="text" name="room">
                            <div id="room-info-checkbox">
                                <div class="border-left">
                                    <input type="checkbox" name="comment">
                                    <p>Bemærkninger</p>
                                </div>
                                <div class="border-left">
                                    <input type="checkbox" name="noComment">
                                    <p>Ingen bemærkninger</p>
                                </div>
                            </div>
                            <div class="border-bot"></div>
                            <div class="clear"></div>
                        </div>
                    </form>
                </div>
                
                <div id="damage-repair">
                    <h2>Skade og reparation</h2>
                    <form action="#" method="post">
                        <table cellspacing="0">
                            <tr>
                                <th>Har der været skade i lokalet?</th>
                                <th colspan="3">
                                    <div><input type="checkbox" name="yes"> Ja</div>
                                    <div><input type="checkbox" name="no"> Nej</div>
                                </th>
                            </tr>
                            <tr>
                                <th>Hvornår</th>
                                <th><input type="text" name="when"></th>
                                <th>Hvor</th>
                                <th><input type="text" name="where"></th>
                            </tr>
                            <tr>
                                <th>Hvad er der sket</th>
                                <th><textarea name="whatHappend"></textarea></th>
                                <th>Hvad er repareret</th>
                                <th><textarea name="whatRepaired"></textarea></th>
                            </tr>
                            <tr>
                                <th>Skade</th>
                                <th colspan="3">
                                    <div><input type="checkbox" name="humidity"> Fugt</div>
                                    <div><input type="checkbox" name="rot"> Råd og swamp</div>
                                    <div><input type="checkbox" name="mold"> Skimmel</div>
                                    <div><input type="checkbox" name="fire"> Brand</div>
                                    <div>
                                        <input type="checkbox" name="other"> Anden skade 
                                        <input type="text" name="otherText">
                                        <div class="border-bot"></div>
                                        <div class="clear"></div>
                                    </div>
                                </th>
                            </tr>
                        </table>
                    </form>
                </div>
                
                <div id="examination-of">
                    <h2>Gennemgang af...</h2>
                    <form action="#" method="post">
                        <table cellspacing="0">
                                <tr>
                                    <th></th>
                                    <th>Bemærkninger</th>
                                    <th>Ingen bemærkninger</th>
                                    <th>Billede</th>
                                </tr>
                                <tr>
                                    <th>Vægge</th>
                                    <th><input type="checkbox" name="commentsWall"></th>
                                    <th><input type="checkbox" name="noCommentsWall"></th>
                                    <th><input type="checkbox" name="pictureWall"></th>
                                </tr>
                                <tr>
                                    <th colspan="4"><textarea name="wallDescription"></textarea></th>
                                </tr>
                                <tr>
                                    <th>Loft</th>
                                    <th><input type="checkbox" name="commentsCeiling"></th>
                                    <th><input type="checkbox" name="noCommentsCeiling"></th>
                                    <th><input type="checkbox" name="pictureCeiling"></th>
                                </tr>
                                <tr>
                                    <th colspan="4"><textarea name="ceilingDescription"></textarea></th>
                                </tr>
                                <tr>
                                    <th>Gulv</th>
                                    <th><input type="checkbox" name="commentsFloor"></th>
                                    <th><input type="checkbox" name="noCommentsFloor"></th>
                                    <th><input type="checkbox" name="pictureFloor"></th>
                                </tr>
                                <tr>
                                    <th colspan="4"><textarea name="floorDescription"></textarea></th>
                                </tr>
                                <tr>
                                    <th>Vinduer/døre</th>
                                    <th><input type="checkbox" name="commentsWindows"></th>
                                    <th><input type="checkbox" name="noCommentsWindows"></th>
                                    <th><input type="checkbox" name="pictureWindows"></th>
                                </tr>
                                <tr>
                                    <th colspan="4"><textarea name="windowsDescription"></textarea></th>
                                </tr>
                                <tr>
                                    <th><input type="text" name="other"></th>
                                    <th><input type="checkbox" name="commentsOther"></th>
                                    <th><input type="checkbox" name="noCommentsOther"></th>
                                    <th><input type="checkbox" name="pictureOther"></th>
                                </tr>
                                <tr>
                                    <th colspan="4"><textarea name="otherDescription"></textarea></th>
                                </tr>
                                <tr>
                                    <th><input type="text" name="other2"></th>
                                    <th><input type="checkbox" name="commentsOther2"></th>
                                    <th><input type="checkbox" name="noCommentsOther2"></th>
                                    <th><input type="checkbox" name="pictureOther2"></th>
                                </tr>
                                <tr>
                                    <th colspan="4"><textarea name="other2Description"></textarea></th>
                                </tr>
                            </table>
                    </form>
                </div>
                
                <div id="humidity-scan">
                    <h2>Fugtscanning</h2>
                    <form action="#" method="post">
                        <table cellspacing="0">
                            <tr>
                                <th colspan="2">Er der foretaget fugtscanning?</th>
                                <th colspan="2">
                                    <div><input type="checkbox" name="yes"> Ja</div>
                                    <div><input type="checkbox" name="no"> Nej</div>
                                </th>
                            </tr>
                            <tr>
                                <th>Fugtscanning</th>
                                <th><input type="text" name="humidityScan"></th>
                                <th>Målpunkt</th>
                                <th><input type="text" name="measuring"></th>
                            </tr>
                            <tr>
                                <th colspan="4"><textarea></textarea></th>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="pageNr">
                    <p>2</p>
                </div>
                <div class="clear"></div>
            </div><!--pageTwo end-->
            <div class="pages">
                <img src="images/PolygonLogo.jpg" alt="polygon logo" class="polygologo">
                <div class="clear"></div>

                <div class="rapportNr">
                    <form action="#" method="GET">
                        <span>Rapport nr.:</span>
                        <input type="text" name="rapportnr"> 
                    </form>    
                </div>
                
                <div id="conclusion">
                    <h2>Konklusion</h2>
                    <form action="#" method="post">
                        <table cellspacing="0">
                            <tr>
                                <th>Lokale</th>
                                <th>Anbefalinger</th>
                            </tr>
                            <tr>
                                <th><input type="text" name="room1"></th>
                                <th><textarea></textarea></th>
                            </tr>
                            <tr>
                                <th><input type="text" name="room2"></th>
                                <th><textarea></textarea></th>
                            </tr>
                            <tr>
                                <th><input type="text" name="room3"></th>
                                <th><textarea></textarea></th>
                            </tr>
                            <tr>
                                <th><input type="text" name="room4"></th>
                                <th><textarea></textarea></th>
                            </tr>
                            <tr>
                                <th><input type="text" name="room5"></th>
                                <th><textarea></textarea></th>
                            </tr>
                            <tr>
                                <th><input type="text" name="room6"></th>
                                <th><textarea></textarea></th>
                            </tr>
                            <tr>
                                <th><input type="text" name="room7"></th>
                                <th><textarea></textarea></th>
                            </tr>
                            <tr>
                                <th><input type="text" name="room8"></th>
                                <th><textarea></textarea></th>
                            </tr>

                        </table>
                    </form>
                </div>
                
                <div id="rapport-writer">
                    <form action="#" method="post">
                        <p>
                            Bygningsgennemgangen er fortaget af <input type="text" name="writer">, Polygon<br>
                            i samarbejde med <input type="text" name="collaborator"> (bygningsansvarlig).
                        </p> 
                    </form>
                </div>
                
                <div id="categorize">
                    <h2>Bygningen er katagoriseret som</h2>
                    <form action="#" method="post">
                        <table cellspacing="0">
                            <tr>
                                <th>Tilstand</th>
                                <th>Beskrivelse af bygningen</th>
                                <th>Tilstandsgrad</th>
                            </tr>
                            <tr>
                                <th><span>Tilstandsgrad 1</span><br>God tilstand</th>
                                <th>Der er ingen problemer med bygningen; bygningens funktion er uden problemer</th>
                                <th><input type="checkbox" name="grade1"></th>
                            </tr>
                            <tr>
                                <th><span>Tilstandsgrad 2</span><br>Middel tilstand</th>
                                <th>Der er slid og skader på bygningen eller risiko for potentielle
                                    problemer med bygningen; bygningen funktion er nedstat, eller der er
                                    risiko for, at funktionen bliver nedsat</th>
                                <th><input type="checkbox" name="grade2"></th>
                            </tr>
                            <tr>
                                <th><span>Tilstandsgrad 3</span><br>Dårlig tilstand</th>
                                <th>Der er problemer med bygningen; bygningen er begyndt at forfalde,
                                    har defekte komponenter, er nedbrudt eller bør udskiftes; bygningens
                                    funktion er nedsat, eller bygningen er næsen eller helt ubrugeligt</th>
                                <th><input type="checkbox" name="grade3"></th>
                            </tr>
                        </table>
                    </form>
                </div>
                
                <div id="bot-text">
                    <p>
                        Denne rapport og bygningsgennemgang er lavet for at klarlægge umiddelbare visuelle problemstillinger. Vores formål er at sikre, at
bygningens anvendelse kan opretholdes. Vi udbedrer ikke skader som en del af bygningsgennemgangen/rapporten. Gennemgangen
af bygningen indeholder ikke fugtmålinger af hele bygningen, men vi kan foretage fugtscanninger enkelte steder i bygningen, hvis vi
finder det nødvendigt. Hvis vi finder kritiske områder i bygningen vil vi fremlægge anbefalinger angående yderligere tiltag så som
yderligere undersøgelser, reparationer eller bygningsopdateringer.
                    </p>
                    <p>
                        Bemærk at vi skal have adgang til hele bygningen for at kunne udføre en fuld gennemgang (dette inkluderer adgang til tag, tagrum,
kælder, krybekælder eller andre aflukkede områder). Denne bygningsgennemgang er ikke-destruktiv. Hvis der skal laves destruktive
indgreb, skal dette først godkendes af de bygningsansvarlige. Destruktive indgreb er ikke en del af denne rapport eller
bygningsgennemgang.
                    </p>
                    <p>
                        Den bygningsansvarlige skal udlevere plantegning over bygningen inden bygningsgennemgangen kan foretages.
                    </p>
                </div>
                
                <div class="pageNr">
                    <p>3</p>
                </div>
                <div class="clear"></div>
            </div><!--pageThree end-->
            <form action="rapportServlet" method="post">
                <input type="submit" name="createRapport" value="Gem">
            </form>
        </div><!--container end-->
    </body>
</html>