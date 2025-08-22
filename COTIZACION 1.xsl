<!-- cotizacion_mawdy.xsl -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="4.0"/>
  <xsl:decimal-format name="decimal" decimal-separator="." zero-digit="0"/>

  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../App_Themes/plantillas.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
      </head>
      <body>

        <!-- CABECERA  -->
        <div align="center">
          <table border="0" cellspacing="0" cellpadding="2" width="100%">
            <tr align="center">
              <td width="37%" style="text-align:left;">
                <img src="./images/logoSociedades/Logo_46_7_16.png" width="230" height="70"/>
              </td>
              <td width="63%" colspan="2">
                <xsl:if test="root/contrato/imagenCliente!=''">
                  <img>
                    <xsl:attribute name="src"><xsl:value-of select="root/contrato/imagenCliente"/></xsl:attribute>
                  </img>
                </xsl:if>
              </td>
            </tr>
            <tr align="left" class="txtNormalPdf">
              <td style="font-size:7.5pt"><strong>COTIZACIÓN SERVICIO DE ASISTENCIA EN VIAJES</strong></td>
              <td rowspan="4" style="text-align:right;"><img src="./images/AvionTraveller2.jpg" width="371" height="72"/></td>
            </tr>
            <tr align="left" class="txtNormalPdf">
              <td style="font-size:7pt"><xsl:value-of select="root/contrato/nameClienteOrigen"/></td>
            </tr>
            <tr align="left" class="txtNormalPdf">
              <td style="font-size:7pt"><xsl:value-of select="root/contrato/dirClienteOrigen"/>, &#160;<xsl:value-of select="root/contrato/telefonoClienteOrigen"/></td>
            </tr>
            <tr align="left" class="txtNormalPdf">
              <td style="font-size:7pt"><xsl:value-of select="root/contrato/emailClienteOrigen"/>&#160;&#160;<xsl:value-of select="root/contrato/dsVendedor"/></td>
            </tr>
          </table>
        </div>

        <!-- DETALLE DE COTIZACIÓN VERIFICAR CON JS -->
        <table width="100%" style="border-top:2px solid #FF0000" cellpadding="2">
          <tr>
            <td width="47%" style="font-size:8pt">
              <b><font color="#FF0000">DETALLE DE COTIZACIÓN</font></b>
            </td>
            <td width="53%" style="font-size:8pt; text-align:right;">
              <b><font color="#FF0000">No:&nbsp;</font></b><xsl:value-of select="root/contrato/numero_cotizacion"/>
            </td>
          </tr>
          <tr>
            <td style="font-size:7pt"><b>NOMBRE COTIZACIÓN:&nbsp;</b><xsl:value-of select="root/contrato/nombreCotizacion"/></td>
            <td style="font-size:7pt"><b>PLAN DE ASISTENCIA COTIZADO:&nbsp;</b><xsl:value-of select="root/contrato/plan"/></td>
          </tr>
          <tr>
            <td style="font-size:7pt"><b>IDENTIFICACIÓN:&nbsp;</b><xsl:value-of select="root/contrato/idFiscal"/></td>
            <td style="font-size:7pt"><b>PRIMA:&nbsp;</b>$ <xsl:value-of select="format-number(root/contrato/primaBruta,'0.00','decimal')"/></td>
          </tr>
          <tr>
            <td style="font-size:7pt"><b>ORIGEN:&nbsp;</b>ECUADOR</td>
            <td style="font-size:7pt"><b>DESTINO:&nbsp;</b><xsl:value-of select="root/contrato/CMBDESTINOSV"/></td>
          </tr>
          <tr>
            <td style="font-size:7pt"><b>INICIO VIGENCIA:&nbsp;</b><xsl:value-of select="root/contrato/date_effet_garantie"/></td>
            <td style="font-size:7pt"><b>FIN DE VIGENCIA:&nbsp;</b><xsl:value-of select="root/contrato/fhFinGarantia"/></td>
          </tr>
          <tr>
            <td style="font-size:7pt"><b>DURACIÓN DEL PLAN:&nbsp;</b><xsl:value-of select="root/contrato/nombre_mois"/> días</td>
            <td/>
          </tr>
        </table>

        <!-- ASEGURADOS PILOSO SEPARADOR -->
        <xsl:for-each select="root/contrato/insuredData">
          <xsl:if test="position()!=1"><![CDATA[ ##!--@@@@--##]]></xsl:if>
          <table width="100%" cellpadding="2">
            <tr><td colspan="2" bgcolor="#f2f2f2" style="font-size:7pt"><b>ASEGURADO</b></td></tr>
            <tr>
              <td style="font-size:7pt"><b>Pasajero:&nbsp;</b><xsl:value-of select="concat(txtApeAsegurado,' ',txtNmAsegurado)"/></td>
              <td style="font-size:7pt"><b>C.I.:&nbsp;</b><xsl:value-of select="txtIdFiscal"/></td>
            </tr>
          </table>
        </xsl:for-each>

        <!-- FORMAS DE PAGO-->
        <table width="100%" cellpadding="2">
          <tr><td colspan="2" bgcolor="#f2f2f2" style="font-size:7pt"><b>FORMAS DE PAGO DISPONIBLES</b></td></tr>
          <tr class="txtNormalPdf" style="font-size:7pt">
            <td width="50%">DÉBITO BANCARIO</td>
            <td width="50%">TARJETA DE CRÉDITO A TRAVÉS DE LA PLATAFORMA PAYSAFE</td>
          </tr>
          <tr class="txtNormalPdf" style="font-size:7pt">
            <td colspan="2">FINANCIAMIENTO A 3 MESES SIN INTERESES EN PAGOS DESDE $100, PLAZOS DE 6, 9 Y 12 MESES CON INTERESES</td>
          </tr>
        </table>

        <!-- ASISTENCIAS Y BENEFICIOS – MONTOS MÁXIMOS  -->
        <table width="100%" border="0" cellpadding="2">
          <tr><td colspan="4" align="center" bgcolor="#f2f2f2"><b>ASISTENCIAS Y BENEFICIOS – MONTOS MÁXIMOS</b></td></tr>
          <tr>
            <td width="35%" bgcolor="#FF0000">Servicios</td><td width="15%" bgcolor="#FF0000">Límites</td>
            <td width="35%" bgcolor="#FF0000">Servicios</td><td width="15%" bgcolor="#FF0000">Límites</td>
          </tr>
          <!-- VERIFICAR -->
          <tr><td bgcolor="#f2f2f2" style="font-size:7pt">Asistencia mundial 24 horas - 365 días</td><td bgcolor="#f2f2f2" style="font-size:7pt">45 Centrales PROPIAS</td><td bgcolor="#f2f2f2" style="font-size:7pt">Gastos hospitalarios/enfermedad</td><td bgcolor="#f2f2f2" style="font-size:7pt">USD 75.000</td></tr>
          <tr><td bgcolor="#f2f2f2" style="font-size:7pt">Repatriación sanitaria</td><td bgcolor="#f2f2f2" style="font-size:7pt">Hasta $28.930</td><td bgcolor="#f2f2f2" style="font-size:7pt">Atención preexistencias de urgencia</td><td bgcolor="#f2f2f2" style="font-size:7pt">Hasta $5.000</td></tr>
          <tr><td bgcolor="#f2f2f2" style="font-size:7pt">Medicación ambulatoria</td><td bgcolor="#f2f2f2" style="font-size:7pt">Hasta $800</td><td bgcolor="#f2f2f2" style="font-size:7pt">Odontología de emergencia</td><td bgcolor="#f2f2f2" style="font-size:7pt">Hasta $500</td></tr>
          <tr><td bgcolor="#f2f2f2" style="font-size:7pt">Hospitalarios en accidente (USA)</td><td bgcolor="#f2f2f2" style="font-size:7pt">Hasta $28.000 (Hasta $5.000 en USA)</td><td bgcolor="#f2f2f2" style="font-size:7pt">Gastos ambulatorios</td><td bgcolor="#f2f2f2" style="font-size:7pt">Hasta $1.000</td></tr>
        </table>

        <!-- LEGALES / PROTECCIÓN DE DATOS  -->
        <table border="0" cellspacing="1" cellpadding="2" width="100%">
          <tr>
            <td width="80%" style="text-align:JUSTIFY; font-size:6pt">
              <p>El plan de asistencia cotizado incluye los siguientes servicios. La presente descripción constituye únicamente un resumen informativo; para revisar el alcance del servicio contratado, puede acceder al siguiente enlace https://www.mawdy.com.ec/.</p>
              <p>En caso de existir inconsistencias o falsedad en la documentación presentada para la cotización esta quedará sin validez. (Resto de texto legal de tu PDF).</p>
              <p><b>PROTECCIÓN DE DATOS PERSONALES:</b> Texto legal según PDF.</p>
            </td>
            <td width="20%" align="center" style="text-align:center; font-size:6pt">
              <b>Para solicitar una asistencia escanea aquí:</b><br/><br/>
              <img src="./images/logoSociedades/Logo_46_7_17.png" width="75" height="80" alt="qr"/>
            </td>
          </tr>
        </table>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
