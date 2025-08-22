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
                <td style="font-size:7.5pt">
                
                  <strong>CERTIFICADO DE ASISTENCIA EN VIAJE</strong>
                </td>
                <td rowspan="4" style="text-align:right;">
                  <img src="../images/AvionTraveller2.jpg" width="371" height="72"></img>
                </td>
              </tr>
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
          <table width="100%"  style="border-top:2px solid FF0000">
            <tr>
              <td width="47%" style="font-size:8pt">
                <b>
                  <font color="#FF0000">PLAN:&#160;</font>
                  SILVER
                </b>
              </td>
              <td width="53%" style="font-size:8pt; text-align:right;">
                <b>
                  <font color="#FF0000">CERTIFICADO: &#160;</font>

                  <xsl:if test="count(../insuredData)>1">
                    <xsl:value-of select="position()"/>&#160;-&#160;
                  </xsl:if>
                                   
                  <xsl:value-of select="../numero_contrat"></xsl:value-of>
                </b>
              </td>
            </tr>
            <tr>
              <td style="font-size:6pt">

                <b>PASAJERO: </b><xsl:value-of select="txtApeAsegurado"></xsl:value-of>&#160;<xsl:value-of select="txtNmAsegurado"></xsl:value-of>&#160;
				<!-- <b>Edad:</b><xsl:value-of select="TXTEDADSV"></xsl:value-of> -->

              </td>
              <td style="font-size:6pt">

                <b>C.I.: </b>
                <xsl:value-of select="txtIdFiscal"></xsl:value-of>

              </td>
            </tr>
            <tr>
              <td style="font-size:6pt">
                <b>ORIGEN: </b>ECUADOR
              </td>
              <td style="font-size:6pt">
                <b>DESTINO: </b>
                <xsl:value-of select="../CMBDESTINOSV"></xsl:value-of>
              </td>
            </tr>
            <tr>
              <td style="font-size:6pt">
                <b>INICIO VIGENCIA: </b>
                <xsl:value-of select="../date_effet_garantie"></xsl:value-of>
              </td>
              <td style="font-size:6pt">
                <b>FIN VIGENCIA: </b>
                <xsl:value-of select="../fhFinGarantia"></xsl:value-of>
              </td>
            </tr>
            <tr>
              <td style="font-size:6pt">
                <b>No. DIAS CONTRATADOS: </b>
                <xsl:value-of select="../nombre_mois"></xsl:value-of>
              </td>
              <!--<td style="font-size:6pt">
                <b> </b>
                <xsl:value-of select="../date_effet_garantie"></xsl:value-of>
              </td>-->
            </tr>
            <!--<tr>
              <td style="font-size:6pt">
                <b>FIN VIGENCIA: </b>
                <xsl:value-of select="../fhFinGarantia"></xsl:value-of>
              </td>
              <td style="font-size:6pt">
			   <b>FILE: </b>
               <xsl:value-of select="../TXTREFERENCIASV"></xsl:value-of>
              </td>
            </tr>-->
			<!--<tr>
             <td style="font-size:6pt">
                <b>FECHA EMISIÓN: </b>
                <xsl:value-of select="../date_reception"></xsl:value-of>
              </td>
            </tr>-->
             <!--<tr>
              <td style="font-size:6pt">
                <b>Valor Plan: ($) </b>
                <xsl:value-of select="format-number(../primaBruta,'0.00','decimal')"></xsl:value-of>
              </td>
              <td style="font-size:6pt">
                <b>Descuento Total: </b>
                <xsl:value-of select="format-number(../totaldescuento,'0.00','decimal')"></xsl:value-of>

              </td>
            </tr>-->
          </table>
          <table width="100%" border="0">
		  <tr>
            <td colspan="4" align="center" bgcolor="#f2f2f2"><strong>RESUMEN DE SERVICIOS Y LIMITES (Durante el viaje)</strong></td>
          </tr>
          <tr>
            <td width="35%" align="left" bgcolor="#FF0000">Servicios</td>
            <td width="15%" align="left" bgcolor="#FF0000">Límites</td>
            <td width="35%" align="left" bgcolor="#FF0000">Servicios</td>
            <td width="15%" align="left" bgcolor="#FF0000">Límites</td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p><strong>MONTO GLOBAL MAXIMO</strong> 
            <br />Hasta 75 años cobertura del 100%, desde 75 años 1 día hasta 80 años cobertura al 50%</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p><strong>Hasta $ 75,000</strong></p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Interrupción del viaje por nacimiento de un familiar</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Diferencia de tarifa</p>
            </td>
          </tr>
		  <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Asistencia mundial 24 horas - 365 días</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>45 centrales propias</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Interrupción del viaje por siniestro grave en el domicilio (incendio o robo)</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Diferencia de tarifa</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Gastos ambulatorios y hospitalarios por enfermedad o accidente (Incluye COVID-19)</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 28,000</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Regreso anticipado o retrasado por enfermedad o accidente (del titular)</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Diferencia de tarifa</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Gastos de repatriación sanitaria en caso de accidentes o enfermedad</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 28,930</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Asistencia monetaria por demora o cancelación de vuelos</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 120 (presentar facturas)</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Gastos hospitalarios y ambulatorios por enfermedad y accidente en USA</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 5,000</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Reembolso de gastos de cancelación de viaje</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
			<p>Hasta $ 300</p> 
			</td>			
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Atención médica por preexistencia de urgencia</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 800</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Asistencia monetaria por demora de equipaje a partir de 48 horas</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 200 (presentar factura)</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Gastos por medicación ambulatoria</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 1,000</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Asistencia monetaria por demora de equipaje a partir de los 8 días</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 500 (presentar factura)</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Gastos de odontología de emergencia por accidente</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 500</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Compensación complementaria por pérdida de equipaje complementaria y declarada por la aerolínea</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 900 ($ 30/kg máx. 30kg)</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Gastos médicos y hospitalarios por accidente durante competencias legalmente reconocidas</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 1,000 </p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Asistencia legal en caso de accidentes (honorarios de abogado)</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 1,000</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Gastos de repatriación funeraria</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Ilimitada</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Adelanto de fianzas</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 1,500</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Asistencia exequial en Ecuador</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 2,000 </p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Transferencia de fondos</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 2,000</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Gastos de hotel por convalecencia para el titular (máx. 10 días)</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 600 ($ 60 por día)</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Transmisión de mensajes urgentes</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>SI</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Viaje de un acompañante</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Boleto aéreo</p>
              </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Compensación en caso de robo y/o extravío de documentos</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 50</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Gastos de hotel para el acompañante (máx. 10 días)</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hasta $ 600 ($60 por día)</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Deducible</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>NO</p>
            </td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Cuidado de un menor en caso de emergencia</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>SI</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Límite de edad</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>80 años</p>
            </td>
          </tr>
		  <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Interrupción del viaje por fallecimiento de un familiar</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Diferencia de tarifa</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Validez territorial</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>TODO EL MUNDO</p>
            </td>
          </tr>
		  		  <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p> </p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p> </p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p> </p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p> </p>
            </td>
          </tr>
		  <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p> </p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p> </p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p> </p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p> </p>
            </td>
          </tr>
		  <p>
		  </p>
		  <tr>
            <td colspan="4" bgcolor="#FF0000">Beneficios en el Ecuador (Antes del viaje)</td>
          </tr>
		  <tr>
		  <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Asistencia psicológica telefónica (temores, fobias, crisis de inseguridad, etc)</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>SI</p>
              </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Asistencia médica nutricional (recomendaciones previas al viaje)</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>SI</p>
            </td>
          </tr>
		  <tr>
            <td colspan="4" bgcolor="#FF0000">Beneficios en el Ecuador (Hasta 15 días después del retorno)</td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Gastos por atención odontológica. Profilaxis / Exámen clínico y diagnóstico</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>100% Una atención para el titular</p>
              </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p> </p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p> </p>
            </td>
          </tr>
		  <tr>
            <td colspan="4" bgcolor="#FF0000">Tarjeta de descuentos (A partir de la compra, hasta 15 días después del viaje)</td>
          </tr>
          <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Médico General</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt"> 
			<p>25% de descuento</p> 
			</td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Salud Visual (Consultas Oftalmológicas)</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>20% de descuento</p>
            </td>
          </tr>
		  <tr>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Farmacias</p>
            </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>15% de descuento</p>
              </td>
			<td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>Hotel para mascotas</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:7pt">
              <p>15% de descuento</p>
            </td>
         </tr>
		   <!--<tr>
            <td bgcolor="#f2f2f2" style="font-size:8pt">
              <p>Cuidado de un menor en caso de emergencia</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:8pt">
			 <p>SI</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:8pt">
              <p>Validez territorial</p>     
              </td>
            <td bgcolor="#f2f2f2">
              <p>Estados Unidos</p>
            </td>
          </tr>
		  <tr>
            <td bgcolor="#f2f2f2" style="font-size:8pt">
              <p>Interrupción del viaje por fallecimiento de un familiar</p>
            </td>
            <td bgcolor="#f2f2f2" style="font-size:8pt"> 
			<p>Diferencia de tarifa</p> 
			</td>
            <td bgcolor="#f2f2f2" style="font-size:8pt">
            </td>
            <td bgcolor="#f2f2f2" style="font-size:8pt">
              </td>
          </tr>-->
            </table>

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
