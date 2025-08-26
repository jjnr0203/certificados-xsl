<!-- CERTIFICADO DE ASISTENCIA EN VIAJES -->

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
                  <strong>CERTIFICADO DE ASISTENCIA EN VIAJES</strong>
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

          <!-- DATOS DEL PASAJERO / CERTIFICADO -->
          <div>
            <tr>
              <td width="100%" style="font-size:8pt">
                <b>
                  <font color="#000000">DATOS DEL PASAJERO / CERTIFICADO&#160;</font>
                </b>
              </td>
            </tr>
            <div>
              <table  width="100%" style="border-top: 2px solid #000000; margin-top:5px;">
                <div>
                  <tr >
                    <td width="50%" style="font-size:6pt">
                      <br/><b>NOMBRE: </b><xsl:value-of select="txtApeAsegurado"></xsl:value-of>&#160;<xsl:value-of select="txtNmAsegurado"></xsl:value-of>&#160;
                    </td>
                    <td width="50%" style="font-size:6pt">
                      <br/><b>COTIZACIÓN No:</b><xsl:value-of select="txtIdFiscal"></xsl:value-of>
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

          <!-- DATOS DEL ASESOR Y PAGO -->
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
                        <br/><b>RAZÓN SOCIAL</b>
                    </td>
                    <td></td>
                  </tr>
                  <tr >
                    <td width="50%" style="font-size:6pt">  
                        <b>DIRECCIÓN</b>
                    </td>
                    <td></td>
                  </tr>
                  <tr >
                    <td width="50%" style="font-size:6pt">
                        <b>TELÉFONO</b>
                    </td>
                    <td></td>
                  </tr>
                  <tr >
                    <td width="50%" style="font-size:6pt">
                        <b>CORREO</b>
                    </td>
                    <td></td>
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
                  <font color="#000000">ASISTENCIAS Y BENEFICIOS / MONTOS MAXIMOS&#160;</font>
                </b>
              </td>
            </tr>
            <div>
              <table  width="100%" style="border-top: 2px solid #000000; margin-top:5px;">
                <div>
                  <tr >
                    <td width="100%">
                      <p style="font-size: 9pt">
                        El plan de asistencia contratado incluye los siguientes servicios. La presente descripción constituye únicamente un resumen
                        informativo; para revisar el alcance del servicio contratado, puede acceder al siguiente enlace 
                        <a href="https://www.mawdy.com.ec"><b>https://www.mawdy.com.ec</b></a>
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
              <td bgcolor="#FFFFFF" style="font-size:7pt; ">
                <p>Asistencia mundial 24 horas - 365 días</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center ">
                <p>45 Centrales PROPIAS</p>
              </td>
            </tr>
            <!-- Todo general col -->
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos hospitalarios por accidente</p>
              </td>
              
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos hospitalarios por enfermedad incluye (COVID-19)</p>
              </td> 
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos ambulatorios por accidente</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos ambulatorios por enfermedad</p>
              </td>
              <!-- End Todo col -->
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos de repatriación sanitaria en caso de accidente o enfermedad</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $28.930</p>
              </td>
            </tr>
             <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos hospitalarios y ambulatorios por enfermedad y accidente en USA</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p><strong>Hasta $5,000</strong></p>
              </td>
            </tr>
              <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Atencion médica por preexistencias de urgencia</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p><strong>Hasta $800</strong></p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Atencion médica por preexistencias de urgencia</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $1.000</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos de odontologia de emergencia por accidente</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $500</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos médicos y hospitalarios por accidente durante las competencias legalmente
                  reconocidas por las federaciones nacionales e internacionales correspondientes y sus
                  respectivas jornadas de entrenamiento. (No deportes de alto riesgo)</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $1.000</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos de repatriación funeraria</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Ilimitada</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Asistencia exequial en Ecuador</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>$2.000</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos de hotel por convalecencia para el titular (max 10 días)</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $600 ($60 x día)</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Viaje de un acompañante</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>boleto aéreo</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos de hotel para el acompañante (max 10 días)</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $600 ($60 x día)</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Cuidado de un menor en caso de emergencia</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>SI</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Interrupcion del viaje por fallecimiento de un familiar, nacimiento de un familiar, por siniestro
                    grave en el domicilio (incendio o robo)</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Diferencia de tarifa</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Asistencia monetaria por demora o cancelación de vuelos</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $120 (presentar facturas)</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Reembolso de gastos de cancelación de viaje</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $300</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Asistencia monetaria por demora de equipaje a partir de las 48 horas</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $200 (presentar facturas)</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Asistencia monetaria por demora de equipaje a partir de los 8 días</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $500 (presentar facturas)</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Compensación complementaria por pérdida de equipaje complementaria
                    y declarada por la aerolínea</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $900
                <br/>($30/kg máximo 30kg)</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Asistencia legal en caso de accidentes (honorarios de abogado)</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $1.000</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Adelanto de fianzas</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $1.500</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Transferencia de fondos</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $2.000</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Transmisión de mensajes urgentes</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>SI</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Compensación en caso de robo y/o extravío de documentos</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta $50</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Deducible</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>No</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Límite de edad</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>MAXIMO 75 AÑOS</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Validez territorial</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>TODO EL MUNDO</p>
              </td>
            </tr>
            <!-- BENEFICIOS EN EL ECUADOR -->
            <tr>
              <td colspan="2" width="100%" style="font-size:12pt;justify-content: center; text-align: center;" bgcolor="#808080">BENEFICIOS EN EL ECUADOR</td>
            </tr>
            <!-- ANTES DEL VIAJE -->
            <tr>
              <td colspan="2" width="100%" style="font-size:12pt;justify-content: center; text-align: center;" bgcolor="#808080">ANTES DEL VIAJE</td>
            </tr>
            
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Asistencia Psicológica Telefónica (temores, fobias, crisis de inseguridad, etc)</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>SI</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Asistencia Médica Nutricional (recomendaciones nutricionales previas al viaje)</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>SI</p>
              </td>
            </tr>
            <!-- DESPUES DEL VIAJE -->
            <tr>
              <td colspan="2" width="100%" style="font-size:12pt;justify-content: center; text-align: center;" bgcolor="#808080">DESPUÉS DEL VIAJE (Hasta 15 días después del retorno)</td>
            </tr>

            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Terapias de recuperación física en Ecuador</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>NO</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Gastos por atención odontológica. Profilaxis / Exámen clínico y diagnóstico</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>100% Una atención para el titular</p>
              </td>
            </tr>

            <!-- TARJETA DE DESCUENTO -->
            <tr>
              <td colspan="2" width="100%" style="font-size:12pt;justify-content: center; text-align: center;" bgcolor="#808080">TARJETA DE DESCUENTOS 
              (A partir de la compra de MAWDY TRAVEL hasta 15 días después del retorno)
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Médico General</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta el 25%</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Salud Visual</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Consultas Oftalmológicas hasta 20%</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Farmacias</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta el 15%</p>
              </td>
            </tr>
            <tr>
              <td bgcolor="#f2f2f2" style="font-size:7pt; ">
                <p>Hotel para mascotas</p>
              </td>
              <td bgcolor="#f2f2f2" style="font-size:7pt; justify-content: center; text-align: center">
                <p>Hasta el 15%</p>
              </td>
            </tr>
          </table>
          </div>
                
          <div style="margin-top:8px">
            <table>
              <tr>
                <td>En caso de existir inconsistencias o falsedad en la documentación presentada para la cotización 
                esta quedará sin validez. Si la edad del contratante está entre 75 años 1 día hasta 79 años 11 meses 
                y 30 días el beneficio será del 50%. Si supera la edad de 80 años 1 día no podrá tener acceso a los 
                beneficios de asistencia en viajes.</td>
              </tr>
            </table>
          </div>

          <!-- DECLARACIONES -->
          <div style="margin-top:15px;">
            <tr>
              <td width="100%" style="font-size:8pt">
                <b>
                  <font color="#000000">DECLARACIONES&#160;</font>
                </b>
              </td>
            </tr>
            <div align="center">
              <table  width="100%" style="border-top: 2px solid #000000; margin-top:5px;">
                <div>
                  <tr >
                    <td width="90%">
                      <p style="font-size: 9pt; text-align: justify">
                        Los servicios estarán sujetos a:
                        <br/>a) Los términos y condiciones del servicio “Asistencia en viaje” que se encuentran detallados en la página web
                        https://www.mawdy.com.ec/ se recomienda leer detenidamente para que conozca detalles de las asistencias contratadas.
                        <br/>b) El pago por los servicios contratados debe ser realizado hasta 24 horas antes del inicio del viaje, caso contrario el certificado
                        no tendrá validez y MAWDY queda relevada de prestar cualquier tipo de servicio.
                      </p>
                    </td>
                  </tr>
                </div>
              </table>
            </div>
          </div>

          <!-- ATENCIÓN AL CLIENTE -->
          <div style="margin-top:15px;">
            <tr>
              <td width="100%" style="font-size:8pt">
                <b>
                  <font color="#000000">ATENCIÓN AL CLIENTE&#160;</font>
                </b>
              </td>
            </tr>
            <div align="center">
              <table  width="100%" style="border-top: 2px solid #000000; margin-top:5px;">
                <div>
                  <tr >
                    <td width="90%">
                      <p style="font-size: 9pt; text-align: justify">
                        Ante cualquier emergencia comuníquese las 24 horas, los 365 días del año e informe:
                        <br/>1. Nombre completo
                        <br/>2. Número de cédula de identidad
                        <br/>3. Motivo de la llamada
                        <br/>4. Lugar donde se encuentre y un teléfono de contacto.
                      </p>

                      <p style="font-size: 9pt; text-align: justify">
                        Estimado cliente, cuando reciba atención médica en España e Italia, por favor ingresar los siguientes datos en toda
                        <br/>documentación facilitada por la casa de salud.
                        <br/>España: Carretera de Pozuelo nº 52, 28222 Majadahonda- Madrid, Correo electrónico: masist.cosiam1@mapfre.com
                        <br/>Italia: Strada Trossi, 66 13871 Verrone (BI) Italia, Correo electrónico: internazionale.assistenza@mapfre.com
                      </p>

                      <p style="font-size: 9pt; text-align: justify">
                        TELÉFONO DE ASISTENCIA: 593-2-39 88 311/312
                        <br/>WHATSAPP DE ASISTENCIA: 56-9-68600869
                        <br/>CORREO DE ASISTENCIA: miasistenciaenviaje@mawdy.com
                      </p>

                      <p style="font-size: 9pt; text-align: justify">
                        Los cambios de fecha y anulaciones se deben solicitar mínimo 24 horas antes de iniciar el viaje. Una vez iniciado el viaje no se
                        <br/>permite ningún cambio. Solo se permiten anulaciones por negación de visa (con carta de negación), por enfermedad (con
                        <br/>certificado médico), o por incumplimiento del literal b contemplado en el apartado de declaraciones.
                        <br/>MAWDY se reserva el derecho de cobrar una penalidad por gastos administrativos por pasajero.
                      </p>
                    </td>
                  </tr>
                </div>
              </table>
            </div>
          </div>

          <!-- PROTECCIÓN DE DATOS PERSONALES -->
          <div style="margin-top:15px;">
            <tr>
              <td width="100%" style="font-size:8pt">
                <b>
                  <font color="#000000">PROTECCIÓN DE DATOS PERSONALES&#160;</font>
                </b>
              </td>
            </tr>
            <div align="center">
              <table  width="100%" style="border-top: 2px solid #000000; margin-top:5px;">
                <div>
                  <tr >
                    <td width="90%">
                      <p style="font-size: 9pt; text-align: justify">
                        El Titular queda informado y consiente expresamente mediante la firma o recepción del presente documento, el tratamiento de
                        los datos suministrados voluntariamente, así como el de todos aquellos datos que pudiera facilitar a MAWDY S.A , directamente o
                        a través de su mediador o agencias de viajes en convenio, y los que se obtengan mediante grabación de conversaciones
                        telefónicas o como consecuencia de su navegación por las páginas web de Internet u otro medio, con motivo del desarrollo del
                        contrato o de la consulta, solicitud o contratación de cualquier servicio o producto, incluso una vez finalizada la relación
                        precontractual o contractual incluidas, en su caso, las comunicaciones o las transferencias internacionales de los datos que
                        pudieran realizarse, todo ello para las finalidades detalladas en la Información Adicional de Protección de Datos.
                      </p>

                      <p style="font-size: 9pt; text-align: justify">
                        El Titular consiente a su vez, la grabación de las conversaciones telefónicas que se mantengan con MAWDY S.A por razón de la
                        prestación del servicio.
                      </p>

                      <p style="font-size: 9pt; text-align: justify">
                        Si los datos facilitados son de personas diferentes del interesado, incluidos los datos de salud, éste garantiza contar con su
                        consentimiento antes de facilitar los mismos, informándoles previamente de los términos de protección de datos establecidos
                        en el presente documento.
                      </p>

                      <p style="font-size: 9pt; text-align: justify">
                        El titular garantiza la exactitud y veracidad de los datos facilitados, adquiriendo el compromiso de comunicar a MAWDY S.A
                        cualquier cambio en los mismos.
                      </p>
                    </td>
                  </tr>
                </div>
              </table>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
