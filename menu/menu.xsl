<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <!-- Credit to https://codepen.io/dcode-software/pen/dyNqJzJ -->
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link type="text/css" rel="stylesheet" href="../css/design.css"/>
        <link type="text/css" rel="stylesheet" href="../css/menu.css"/>
        <title>Restaurant Menu</title>
      </head>
      <body>
        <table style="font-size:100%">
          <tr>
            <td><a href="../Main.html">Main Page</a></td>
            <td><a href="menu.xml">Menu Page</a></td>
            <td><a href="../Main.html#OpeningTimes">Opening Times</a></td>
            <td><a href="../StaffListing.html">Staff Listing Page</a></td>
            <td><a href="../Menu.html">Old Menu Page</a></td>
          </tr>
        </table>
        <div class="container">
          <h2 class="menu-group-heading">
            Sandwiches
          </h2>
          <xsl:for-each select="Menu/MenuItem[@category='Sandwiches']">
            <xsl:call-template name="display"/>
          </xsl:for-each>
          <h2 class="menu-group-heading">
          Main Course
          </h2>
          <xsl:for-each select="Menu/MenuItem[@category='Main Course']">
            <xsl:call-template name="display"/>
          </xsl:for-each>
          <h2 class="menu-group-heading">
            Milkshakes
          </h2>
          <xsl:for-each select="Menu/MenuItem[@category='Milkshakes']">
            <xsl:call-template name="display"/>
          </xsl:for-each>
          <h2 class="menu-group-heading">
            Beverages
          </h2>
          <xsl:for-each select="Menu/MenuItem[@category='Beverages']">
            <xsl:call-template name="display"/>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template name="display">
    <div class="menu-group">
      <div class="menu-item">
        <img class="menu-item-image" src="{image}" alt="Picture of Food"/>
        <div class="menu-item-text">
          <h3 class="menu-item-heading">
            <span class="menu-item-name"><xsl:value-of select="description"/></span>
            <span class="menu-item-price">
              <xsl:if test="price/regular">
                <xsl:value-of select="price/regular"/>
              </xsl:if>
              <xsl:if test="not(price/regular)">
                (Full: <xsl:value-of select="price/full"/>)
                (Half: <xsl:value-of select="price/half"/>)
              </xsl:if>
            </span>
          </h3>
          <p class="menu-item-description">
            Nunc efficitur felis vel mi efficitur, sed molestie sem scelerisque. Fusce orci risus,
            congue eu mauris nec, pretium tincidunt nulla.
          </p>
        </div>
      </div>
    </div>
    </xsl:template>

</xsl:stylesheet>

