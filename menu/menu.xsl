<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <!-- Credit to https://codepen.io/dcode-software/pen/dyNqJzJ -->
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Restaurant Menu</title>
        <style>
          .container {
          max-width: 1200px;
          margin: 0 auto;
          padding: 1.5em;
          }

          .menu {
          font-family: "Inter", sans-serif;
          font-size: 14px;
          }

          .menu-group-heading {
          margin: 0;
          padding-bottom: 1em;
          border-bottom: 2px solid #ccc;
          }

          .menu-group {
          display: grid;
          grid-template-columns: 1fr;
          gap: 1.5em;
          padding: 1.5em 0;
          }

          .menu-item {
          display: flex;
          }

          .menu-item-image {
          width: 80px;
          height: 80px;
          flex-shrink: 0;
          object-fit: cover;
          margin-right: 1.5em;
          }

          .menu-item-text {
          flex-grow: 1;
          }

          .menu-item-heading {
          display: flex;
          justify-content: space-between;
          margin: 0;
          }

          .menu-item-name {
          margin-right: 1.5em;
          }

          .menu-item-description {
          line-height: 1.6;
          }

          @media screen and (min-width: 992px) {
          .menu {
          font-size: 16px;
          }

          .menu-group {
          grid-template-columns: repeat(2, 1fr);
          }

          .menu-item-image {
          width: 125px;
          height: 125px;
          }
          }

        </style>
      </head>
      <body>
        <div class="container">
          <div class="menu">
            <h2 class="menu-group-heading">
              Sandwiches
            </h2>
            <xsl:for-each select="Menu/MenuItem">
              <div class="menu-group">
                <div class="menu-item">
                  <img class="menu-item-image" src="{image}" />
                  <div class="menu-item-text">
                    <h3 class="menu-item-heading">
                      <span class="menu-item-name"><xsl:value-of select="description"/></span>
                      <span class="menu-item-price"><xsl:value-of select="price"/></span>
                    </h3>
                    <p class="menu-item-description">
                      Nunc efficitur felis vel mi efficitur, sed molestie sem scelerisque. Fusce orci risus,
                      congue eu mauris nec, pretium tincidunt nulla.
                    </p>
                  </div>
                </div>
              </div>
            </xsl:for-each>
            <h2 class="menu-group-heading">
              Main Course
            </h2>
            <xsl:for-each select="Menu/MenuItem">
              <div class="menu-group">
                <div class="menu-item">
                  <img class="menu-item-image" src="{image}" />
                  <div class="menu-item-text">
                    <h3 class="menu-item-heading">
                      <span class="menu-item-name"><xsl:value-of select="description"/></span>
                      <span class="menu-item-price"><xsl:value-of select="price"/></span>
                    </h3>
                    <p class="menu-item-description">
                      Nunc efficitur felis vel mi efficitur, sed molestie sem scelerisque. Fusce orci risus,
                      congue eu mauris nec, pretium tincidunt nulla.
                    </p>
                  </div>
                </div>
              </div>
            </xsl:for-each>
            <h2 class="menu-group-heading">
              Milkshakes
            </h2>
            <xsl:for-each select="Menu/MenuItem">
              <div class="menu-group">
                <div class="menu-item">
                  <img class="menu-item-image" src="{image}" />
                  <div class="menu-item-text">
                    <h3 class="menu-item-heading">
                      <span class="menu-item-name"><xsl:value-of select="description"/></span>
                      <span class="menu-item-price"><xsl:value-of select="price"/></span>
                    </h3>
                    <p class="menu-item-description">
                      Nunc efficitur felis vel mi efficitur, sed molestie sem scelerisque. Fusce orci risus,
                      congue eu mauris nec, pretium tincidunt nulla.
                    </p>
                  </div>
                </div>
              </div>
            </xsl:for-each>
            <h2 class="menu-group-heading">
              Beverages
            </h2>
            <xsl:for-each select="Menu/MenuItem">
              <div class="menu-group">
                <div class="menu-item">
                  <img class="menu-item-image" src="{image}" />
                  <div class="menu-item-text">
                    <h3 class="menu-item-heading">
                      <span class="menu-item-name"><xsl:value-of select="description"/></span>
                      <span class="menu-item-price"><xsl:value-of select="price"/></span>
                    </h3>
                    <p class="menu-item-description">
                      Nunc efficitur felis vel mi efficitur, sed molestie sem scelerisque. Fusce orci risus,
                      congue eu mauris nec, pretium tincidunt nulla.
                    </p>
                  </div>
                </div>
              </div>
            </xsl:for-each>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

