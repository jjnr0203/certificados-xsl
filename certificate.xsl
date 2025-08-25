<!--CREADO PARA MU-2014-002368 SEESPIN 04/02/2014-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:user="https://www.xyz.com/mynamespace">
  <xsl:decimal-format name="decimal" decimal-separator="." zero-digit="0" NaN="0.00"></xsl:decimal-format>
  <xsl:output method="html" version="4.0"></xsl:output>
  <xsl:template match="/">
    <html>
      <head>
        <LINK REL="stylesheet" type="text/css" href="../App_Themes/plantillas.css"></LINK>
      </head>
      <body>
        <xsl:for-each select="root/contrato/insuredData">
          <xsl:if test="position()!=1">
            <![CDATA[ ##!--@@@@--##]]>
          </xsl:if>
          <div align="center">
            <table border="0" cellspacing="0" cellpadding="2" width="100%">
              <tr align="center">
                <td width="37%" style="text-align:left;">
                  <img src="../images/logoSociedades/Logo_46_7_16.png" width="230" height="70"></img>
                </td>
                <td width="63%" colspan="2">
                  <xsl:if test="(imagenCliente!='')">
                    <img>
                      <xsl:attribute name="src">
                        <xsl:value-of select="../imagenCliente"></xsl:value-of>
                      </xsl:attribute>
                    </img>
                  </xsl:if>
                </td>
              </tr>

              <tr align="left" CLASS="txtNormalPdf">
                <td style="text-align:right;">
                  <img src="../images/AvionTraveller2.jpg" width="371" height="72"></img>
                </td>
              </tr>

              <td width="100%" style="text-align:center;">
                  <strong>COTIZACIÓN SERVICIO DE ASISTENCIA EN VIAJES</strong>
              </td>
              <tr align="left" CLASS="txtNormalPdf">
                <td style="font-size:7pt">
                  <!--Nombre del dealer -->
                  <xsl:value-of select="../nameClienteOrigen"></xsl:value-of>
                </td>
              </tr>
              <tr align="left" CLASS="txtNormalPdf">
                <td style="font-size:7pt">
                  <!--Direccion dealer--> <!--Telefono del dealer -->
                  <xsl:value-of select="../dirClienteOrigen"></xsl:value-of>, &#160;<xsl:value-of select="../telefonoClienteOrigen"></xsl:value-of>
                </td>
              </tr>
              <tr align="left" CLASS="txtNormalPdf">
                <td style="font-size:7pt">
                  <!--EmailDealer-->
                  <xsl:value-of select="../emailClienteOrigen"></xsl:value-of>&#160;&#160;<xsl:value-of select="../dsVendedor"></xsl:value-of>
                </td>
              </tr>
            </table>   
          </div>

          <!-- DETALLES DE COTIZACION -->
          <div>
            <tr>
              <td width="100%" style="font-size:8pt">
                <b>
                  <font color="#000000">DETALLE DE COTIZACIÓN&#160;</font>
                </b>
              </td>
            </tr>
            <div>
              <table  width="100%" style="border-top: 2px solid #000000; margin-top:5px;">
                <div>
                  <tr >
                    <td width="50%" style="font-size:6pt">
                      <b>NOMBRE: </b><xsl:value-of select="txtApeAsegurado"></xsl:value-of>&#160;<xsl:value-of select="txtNmAsegurado"></xsl:value-of>&#160;
                    </td>
                    <td width="50%" style="font-size:6pt">
                      <b>COTIZACIÓN No:</b><xsl:value-of select="txtIdFiscal"></xsl:value-of>
                    </td>
                  </tr>
                  <tr >
                    <td width="50%" style="font-size:6pt">
                      <b>IDENTIFICACION No:</b><xsl:value-of select="txtApeAsegurado"></xsl:value-of>&#160;<xsl:value-of select="txtNmAsegurado"></xsl:value-of>&#160;
                    </td>
                    <td width="50%" style="font-size:6pt">
                      <b>PLAN DE ASISTENCIA COTIZADO:</b><xsl:value-of select="txtIdFiscal"></xsl:value-of>
                    </td>
                  </tr>
                  <tr >
                    <td width="50%" style="font-size:6pt">
                      <b></b><xsl:value-of select="txtApeAsegurado"></xsl:value-of>&#160;<xsl:value-of select="txtNmAsegurado"></xsl:value-of>&#160;
                    </td>
                    <td width="50%" style="font-size:6pt">
                      <b>ORIGEN:</b><xsl:value-of select="txtIdFiscal"></xsl:value-of>
                    </td>
                  </tr>
                  <tr >
                    <td width="50%" style="font-size:6pt">
                      <b></b><xsl:value-of select="txtApeAsegurado"></xsl:value-of>&#160;<xsl:value-of select="txtNmAsegurado"></xsl:value-of>&#160;
                    </td>
                    <td width="50%" style="font-size:6pt">
                      <b>DESTINO:</b><xsl:value-of select="txtIdFiscal"></xsl:value-of>
                    </td>
                  </tr>
                  <tr >
                    <td width="50%" style="font-size:6pt">
                      <b></b><xsl:value-of select="txtApeAsegurado"></xsl:value-of>&#160;<xsl:value-of select="txtNmAsegurado"></xsl:value-of>&#160;
                    </td>
                    <td width="50%" style="font-size:6pt">
                      <b>INICIO VIGENCIA:</b><xsl:value-of select="txtIdFiscal"></xsl:value-of>
                    </td>
                  </tr>
                  <tr>
                    <td width="50%" style="font-size:6pt">
                      <b></b><xsl:value-of select="txtApeAsegurado"></xsl:value-of>&#160;<xsl:value-of select="txtNmAsegurado"></xsl:value-of>&#160;
                    </td>
                    <td width="50%" style="font-size:6pt">
                      <b>FIN DE VIGENCIA:</b><xsl:value-of select="txtIdFiscal"></xsl:value-of>
                    </td>
                  </tr>
                  <tr>
                    <td width="50%" style="font-size:6pt">
                      <b></b><xsl:value-of select="txtApeAsegurado"></xsl:value-of>&#160;<xsl:value-of select="txtNmAsegurado"></xsl:value-of>&#160;
                    </td>
                    <td width="50%" style="font-size:6pt">
                      <b>DURACION DEL PLAN:</b><xsl:value-of select="txtIdFiscal"></xsl:value-of>
                    </td>
                  </tr>
                </div>
              </table>
            </div>
          </div>

          <!-- FORMAS DE PAGO DISPONIBLES -->
          <div style="margin-top:15px;">
            <tr>
              <td width="100%" style="font-size:8pt">
                <b>
                  <font color="#000000">FORMAS DE PAGO DISPONIBLES&#160;</font>
                </b>
              </td>
            </tr>
            <div>
              <table  width="100%" style="border-top: 2px solid #000000; margin-top:5px;">
                <div>
                  <tr >
                    <td width="50%" style="font-size:6pt">
                      <p><b>DEBITO BANCARIO</b></p>
                      <p></p>
                      <p>A TRAVES DE LA PLATAFORMA</p>
                      <p>PAYSAFE</p>

                    </td>
                    <td width="50%" style="font-size:6pt">
                      <p><b>TAREJETA DE CREDITO</b></p>
                      <p>FINANCIAMIENTO A 3 MESES SIN INTERESES</p>
                      <p>EN PAGOS DESDE $100,</p>
                      <p>PLAZOS DE 6, 9 Y 12 MESES CON INTERESES</p>
                    </td>
                  </tr>
                </div>
              </table>
            </div>
          </div>

          <!-- ASISTENCIAS Y BENEFICIOS - MONTOS MAXIMOS -->
          <div style="margin-top:15px;">
            <tr>
              <td width="100%" style="font-size:8pt">
                <b>
                  <font color="#000000">ASISTENCIAS Y BENEFICIOS - MONTOS MAXIMOS&#160;</font>
                </b>
              </td>
            </tr>
            <div>
              <table  width="100%" style="border-top: 2px solid #000000; margin-top:5px;">
                <div>
                  <tr >
                    <td width="100%">
                      <p style="font-size: 9pt">
                      El plan de asistencia cotizado incluye los siguientes servicios. La presente descripción constituye únicamente un resumen informativo; 
                      para revisar el alcance del servicio contratado, puede acceder al siguiente enlace <a href="https://www.mawdy.com.ec"><b>https://www.mawdy.com.ec</b></a>
                      </p>
                    </td>
                  </tr>
                </div>
              </table>
            </div>
          </div>

          <!-- TABLA DE DETALLES DE SERVICIOS -->
          <div align="center" style="margin-top:5px">
            <table width="95%" border="0" style="justify-content: center">
            <tr >
              <td width="60%" style="font-size:15pt;justify-content: center; text-align: center;" bgcolor="#FF0000">DETALLE DE SERVICIOS</td>
              <td width="35%" style="font-size:15pt;justify-content: center; text-align: center;" bgcolor="#FF0000">SILVER</td>
            </tr>
            <tr>
              <td colspan="2" width="100%" style="font-size:12pt;justify-content: center; text-align: center;" bgcolor="#808080">DURANTE EL VIAJE</td>
            </tr>
            <tr>
              <td width="60%" style="font-size:12pt;justify-content: center; text-align: center;" bgcolor="#808080">MONTO MÁXIMO GLOBAL</td>
              <td width="35%" style="font-size:12pt;justify-content: center; text-align: center;" bgcolor="#808080">USD 75.000</td>
            </tr>

            <tr>
              <td bgcolor="#FFFFFF" style="font-size:7pt">
                <p>Asistencia mundial 24 horas - 365 días</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>45 Centrales PROPIAS</p>
              </td>
            </tr>
            <!-- Todo general col -->
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Gastos hospitalarios por accidente</p>
              </td>
              
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Gastos hospitalarios por enfermedad incluye (COVID-19)</p>
              </td> 
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Gastos ambulatorios por accidente</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Gastos ambulatorios por enfermedad</p>
              </td>
              <!-- End Todo col -->
            </tr>
            <!-- <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Gastos de repatriación sanitaria en caso de accidente o enfermedad</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $28.930</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>MONTO GLOBAL MAXIMO</strong> 
              <br />Hasta 75 años cobertura del 100%, desde 75 años 1 día hasta 80 años cobertura al 50%</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Hasta $ 75,000</strong></p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Gastos hospitalarios y ambulatorios por enfermedad y accidente en USA</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $5.000</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Atencion médica por preexistencias de urgencia</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Hasta $ 800</strong></p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Gastos por medicación ambulatoria</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $1.000</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Gastos de odontologia de emergencia por accidente</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $500</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Gastos médicos y hospitalarios por accidente durante las competencias legalmente
                reconocidas por las federaciones nacionales e internacionales correspondientes y sus
                respectivas jornadas de entrenamiento. (No deportes de alto riesgo)</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $1.000</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Gastos de repatriación funeraria</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Ilimitada</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Asistencia exequial en Ecuador</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>$2.000</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Gastos de hotel por convalecencia para el titular (max 10 días)</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $600 ($60 x día)</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Viaje de un acompañante</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>boleto aéreo</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Gastos de hotel para el acompañante (max 10 días)</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $600 ($60 x día)</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Cuidado de un menor en caso de emergencia</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>SI</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Interrupcion del viaje por fallecimiento de un familiar, nacimiento de un familiar, por siniestro
                  grave en el domicilio (incendio o robo)</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Diferencia de tarifa</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Asistencia monetaria por demora o cancelación de vuelos</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $120 (presentar facturas)</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Reembolso de gastos de cancelación de viaje</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $300</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Asistencia monetaria por demora de equipaje a partir de las 48 horas</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $200 (presentar facturas)</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Asistencia monetaria por demora de equipaje a partir de los 8 días</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $500 (presentar facturas)</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Compensación complementaria por pérdida de equipaje complementaria
                  y declarada por la aerolínea</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p>Hasta $900
                  ($30/kg máximo 30kg)</p>
              </td>
            </tr> -->
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>MONTO GLOBAL MAXIMO</strong> 
              <br />Hasta 75 años cobertura del 100%, desde 75 años 1 día hasta 80 años cobertura al 50%</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Hasta $ 75,000</strong></p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>MONTO GLOBAL MAXIMO</strong> 
              <br />Hasta 75 años cobertura del 100%, desde 75 años 1 día hasta 80 años cobertura al 50%</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Hasta $ 75,000</strong></p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>MONTO GLOBAL MAXIMO</strong> 
              <br />Hasta 75 años cobertura del 100%, desde 75 años 1 día hasta 80 años cobertura al 50%</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Hasta $ 75,000</strong></p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>MONTO GLOBAL MAXIMO</strong> 
              <br />Hasta 75 años cobertura del 100%, desde 75 años 1 día hasta 80 años cobertura al 50%</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Hasta $ 75,000</strong></p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>MONTO GLOBAL MAXIMO</strong> 
              <br />Hasta 75 años cobertura del 100%, desde 75 años 1 día hasta 80 años cobertura al 50%</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Hasta $ 75,000</strong></p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>MONTO GLOBAL MAXIMO</strong> 
              <br />Hasta 75 años cobertura del 100%, desde 75 años 1 día hasta 80 años cobertura al 50%</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Hasta $ 75,000</strong></p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>MONTO GLOBAL MAXIMO</strong> 
              <br />Hasta 75 años cobertura del 100%, desde 75 años 1 día hasta 80 años cobertura al 50%</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Hasta $ 75,000</strong></p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>MONTO GLOBAL MAXIMO</strong> 
              <br />Hasta 75 años cobertura del 100%, desde 75 años 1 día hasta 80 años cobertura al 50%</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Hasta $ 75,000</strong></p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>MONTO GLOBAL MAXIMO</strong> 
              <br />Hasta 75 años cobertura del 100%, desde 75 años 1 día hasta 80 años cobertura al 50%</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
                <p><strong>Hasta $ 75,000</strong></p>
              </td>
            </tr>
            <!-- BENEFICIOS EN EL ECUADOR -->
            <tr>
              <td colspan="2" width="100%" style="font-size:12pt;justify-content: center; text-align: center;" bgcolor="#808080">DURANTE EL VIAJE</td>
            </tr>
        </table>
          </div>

          <table border="0" cellspacing="1" cellpadding="2" width="100%">
            <tr>
              <td width="80%" style="text-align:JUSTIFY; font-size:6 pt">               
                <!--Este cuadro de garantías representa un resumen de coberturas, requisitos y condiciones que se encuentran disponibles en el sitio <a href="https://wcolaboradoresti.mapfre.com/,DanaInfo=www.segurviaje.com.ec">www.segurviaje.com.ec</a>-->
       				  <br />
                <p>
                    Ante cualquier emergencia comuníquese las 24  horas, los 365 días del año e informe: 
                    1. Nombre completo; 
                    2. Nº de cédula de identidad; 
                    3. Motivo de la llamada; 
                    4. Lugar y teléfono de donde se encuentre. 
                    <b>TELÉFONO DE ASISTENCIA: 593-2-39 88 311/312</b>
                    <br />
                    <br />
                    Los cambios de fecha y anulaciones se deben solicitar mínimo 24 horas antes de iniciar la vigencia del voucher. 
                    Una vez comenzada la vigencia no se permite ningún cambio inclusive con documentos justificados. 
                    Solo se permiten anulaciones por negación de visa (con carta de negación) o por enfermedad (con certificado médico).  
				    MAWDY TRAVEL se reserva el derecho de cobrar una penalidad por gastos administrativos por pasajero.
                    <br />
                    <br />
                    <strong>Estimado cliente, cuando reciba atención médica en los Estados Unidos, por favor ingresar los siguientes datos en toda documentación 
                        facilitada por la casa de salud.
                    <br />
                    <b>Dirección: </b>8150 N. Central Expressway, Suite 1700, Dallas, TX 75206 (NSHI: 8150 N. Central Expressway, Suite 1700, Dallas, Texas 75206  USA)
                    <br />
                    <b>Correo electrónico: </b>mapfreassist@epicamericas.com</strong>
<br />
<br /><b>De conformidad con lo establecido en la Ley Orgánica de Protección de Datos Personales y mediante la suscripción del presente documento el FIRMANTE acepta y declara haber leído el Aviso de Privacidad y Protección de Datos Personales de clientes disponible en el sitio web: https://www.mawdy.com.ec/politica-de-privacidad/; razón por la cual, autoriza a MAWDY S.A., sus compañías relacionadas o aquellos con quienes mantiene una relación contractual al tratamiento de sus datos personales.</b>
                </p>
              </td>
              <td width="20%" align="center" style="text-align:center; font-size:6 pt">
                <strong>Para solicitar una asistencia escanea aquí:</strong>
                <br />
                <br />
                <img src="../images/logoSociedades/Logo_46_7_17.png" alt="logo_mapfre" width="75" height="80"></img>
              </td>
            </tr>
          </table>
            <div align="center">
            
            <div align="center" style=" FONT-SIZE: 8px;" CLASS="txtCondicionesPdf">
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
