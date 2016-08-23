<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PH02886.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your contact page.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Google MAP:</h3>
        </header>
        <p>
<script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCv3DJPZHnt0oTKJGikwVyiEweeCCM2EzI'></script><div style='overflow:hidden;height:400px;width:520px;'><div id='gmap_canvas' style='height:400px;width:520px;'></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div> <a href='http://www.fliegengittershop.org/'>mehr Informationen</a> <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=2081263f808d68fa701863a8b5cb6499a71b0689'></script><script type='text/javascript'>function init_map() { var myOptions = { zoom: 12, center: new google.maps.LatLng(16, 106), mapTypeId: google.maps.MapTypeId.ROADMAP }; map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions); marker = new google.maps.Marker({ map: map, position: new google.maps.LatLng(16, 106) }); infowindow = new google.maps.InfoWindow({ content: '<strong>sdfgsdfg</strong><br>sdfgsdfg<br>sdfg sf<br>' }); google.maps.event.addListener(marker, 'click', function () { infowindow.open(map, marker); }); infowindow.open(map, marker); } google.maps.event.addDomListener(window, 'load', init_map);</script>        </p>
        
    </section>

   
</asp:Content>