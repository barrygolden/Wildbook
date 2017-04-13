<%@ page
		contentType="text/html; charset=utf-8"
		language="java"
     	import="org.ecocean.ShepherdProperties,org.ecocean.CommonConfiguration,org.ecocean.ContextConfiguration,java.util.Properties,org.ecocean.servlet.ServletUtilities"
%>
        <%
        String urlLoc = "//" + CommonConfiguration.getURLLocation(request);
				String context="context0";
				context=ServletUtilities.getContext(request);
				// Make a properties object for lang support.
				Properties props = new Properties();
				// Find what language we are in.
				String langCode = ServletUtilities.getLanguageCode(request);
				// Grab the properties file with the correct language strings.
				props = ShepherdProperties.getProperties("footer.properties", langCode, context);
        %>

        <!-- footer -->
        <footer class="page-footer">

            <div class="container-fluid">
              <div class="container main-section">

                 <div class="row">
                     
                    <div class="col-xs-3" style="margin-top:10px;">
                      <img alt="boi logo" src="<%=urlLoc%>/cust/mantamatcher/img/bass/boi_logo.svg" style="max-width:200px;max-height:auto;" />
                    </div>
  
                    <div class="col-xs-2" style="margin-top:10px;">
                      <img alt="love lab logo" src="<%=urlLoc%>/cust/mantamatcher/img/bass/little_love_logo.png" />
                    </div>
                    
                  	<div class="col-xs-3" style="margin-top:10px;">
                      <img alt="msi logo" src="<%=urlLoc%>/cust/mantamatcher/img/bass/msi_logo_small.png" />
                    </div> 	   
                    
                    
                    <a href="http://www.wildbook.org" class="col-sm-2" title="This site is Powered by Wildbook">
                      <img src="<%=urlLoc%>/images/WildBook_logo_72dpi-01.png" alt="wildbook logo"  style="height:150px;margin-top:10px;"/>
                    </a> 
                 </div>
                 
                 <div class="row">
                    <p class="col-sm-12" style="margin-top:10px;">
                      <small><%=props.getProperty("licenceInfo")%>
                      <br> <a href="http://www.wildme.org/wildbook" target="_blank">Wildbook v.<%=ContextConfiguration.getVersion() %></a> </small> 
                    </p>                                   	   
                 </div>
                 
                  
              </div>
            </div>

            <script>
				  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

				  ga('create', 'UA-84279600-2', 'auto');
				  ga('send', 'pageview');

			</script>

        </footer>
        <!-- /footer -->
    </body>
</html>
