<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.3.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="11" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="16" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="14" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="no" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="no" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="no" active="yes"/>
<layer number="113" name="IDFDebug" color="4" fill="1" visible="no" active="yes"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="no" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="no" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="no" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="no" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="no" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="no" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="no" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="no" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="no" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="no" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="no" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="no" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="no" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="no" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="no" active="no"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="no" active="no"/>
<layer number="248" name="Housing" color="7" fill="1" visible="no" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="no" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SparkFun">
<packages>
</packages>
<symbols>
<symbol name="3.3V">
<wire x1="0.762" y1="1.27" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<text x="-1.016" y="3.556" size="1.778" layer="96">&gt;VALUE</text>
<pin name="3.3V" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="3.3V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="3.3V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Capacitors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1206">
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="CAP-PTH-SMALL">
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651"/>
<text x="0.508" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="0.254" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="CAP-PTH-SMALL2">
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
</package>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CAP-PTH-LARGE">
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="-4.826" y="0" drill="0.9" diameter="1.905"/>
<pad name="2" x="4.572" y="0" drill="0.9" diameter="1.905"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="GRM43D">
<wire x1="2.25" y1="1.6" x2="1.1" y2="1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-2.25" y2="1.6" width="0.127" layer="51"/>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="2.25" y2="-1.6" width="0.127" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="1.6" x2="1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-2.3" y1="1.8" x2="2.3" y2="1.8" width="0.127" layer="21"/>
<wire x1="-2.3" y1="-1.8" x2="2.3" y2="-1.8" width="0.127" layer="21"/>
<smd name="A" x="1.927" y="0" dx="3.2" dy="1.65" layer="1" rot="R90"/>
<smd name="C" x="-1.927" y="0" dx="3.2" dy="1.65" layer="1" rot="R90"/>
<text x="-2" y="2" size="0.4064" layer="25">&gt;NAME</text>
<text x="0" y="-2" size="0.4064" layer="27" rot="R180">&gt;VALUE</text>
<rectangle x1="-2.2" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="2.2" y2="1.6" layer="51"/>
</package>
<package name="0603-CAP">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.5588" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0402-CAP">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.4064" layer="21"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="CAP-PTH-5MM">
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="-2.5" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.5" y="0" drill="0.7" diameter="1.651"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="AXIAL-5MM">
<wire x1="-1.14" y1="0.762" x2="1.14" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0.762" x2="1.14" y2="0" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0" x2="1.14" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="-0.762" x2="-1.14" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="-0.762" x2="-1.14" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="0" x2="-1.14" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0" x2="1.394" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="0" x2="-1.394" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-2.5" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="2.5" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.17" size="0.4" layer="25">&gt;Name</text>
<text x="-1.032" y="-0.208" size="0.4" layer="21" ratio="15">&gt;Value</text>
</package>
<package name="1210">
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.3" x2="1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="-1.3" x2="-1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-1.3" x2="-1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.2032" layer="21"/>
<wire x1="-1.6" y1="-1.3" x2="1.6" y2="-1.3" width="0.2032" layer="21"/>
<smd name="1" x="-1.6" y="0" dx="1.2" dy="2" layer="1"/>
<smd name="2" x="1.6" y="0" dx="1.2" dy="2" layer="1"/>
<text x="-0.8" y="0.5" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.9" y="-0.7" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CTZ3">
<description>CTZ3 Series land pattern for variable capacitor - CTZ3E-50C-W1-PF</description>
<wire x1="-1.6" y1="1.4" x2="-1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-2.25" x2="1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.4" x2="1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-0.5" y1="0" x2="0.5" y2="0" width="0.127" layer="51"/>
<wire x1="-1.6" y1="1.4" x2="-1" y2="2.2" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.4" x2="1" y2="2.2" width="0.127" layer="51"/>
<wire x1="-1" y1="2.2" x2="1" y2="2.2" width="0.127" layer="51"/>
<wire x1="0" y1="0.8" x2="0" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-0.8" y1="0" x2="0.8" y2="0" width="0.127" layer="51"/>
<wire x1="-1.05" y1="2.25" x2="-1.7" y2="1.45" width="0.127" layer="21"/>
<wire x1="-1.7" y1="1.45" x2="-1.7" y2="-2.35" width="0.127" layer="21"/>
<wire x1="-1.7" y1="-2.35" x2="-1.05" y2="-2.35" width="0.127" layer="21"/>
<wire x1="1.05" y1="2.25" x2="1.7" y2="1.4" width="0.127" layer="21"/>
<wire x1="1.7" y1="1.4" x2="1.7" y2="-2.35" width="0.127" layer="21"/>
<wire x1="1.7" y1="-2.35" x2="1.05" y2="-2.35" width="0.127" layer="21"/>
<smd name="+" x="0" y="2.05" dx="1.5" dy="1.2" layer="1"/>
<smd name="-" x="0" y="-2.05" dx="1.5" dy="1.2" layer="1"/>
<text x="-2" y="3" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2" y="-3.4" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CAP-PTH-SMALL-KIT">
<description>&lt;h3&gt;CAP-PTH-SMALL-KIT&lt;/h3&gt;
Commonly used for small ceramic capacitors. Like our 0.1uF (http://www.sparkfun.com/products/8375) or 22pF caps (http://www.sparkfun.com/products/8571).&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-2.667" y1="1.27" x2="2.667" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="1.27" x2="2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="-1.27" x2="-2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.667" y1="-1.27" x2="-2.667" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="2" x="1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<polygon width="0.127" layer="30">
<vertex x="-1.4021" y="-0.9475" curve="-90"/>
<vertex x="-2.357" y="-0.0178" curve="-90.011749"/>
<vertex x="-1.4046" y="0.9576" curve="-90"/>
<vertex x="-0.4546" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1.4046" y="-0.4395" curve="-90.012891"/>
<vertex x="-1.8491" y="-0.0153" curve="-90"/>
<vertex x="-1.4046" y="0.452" curve="-90"/>
<vertex x="-0.9627" y="-0.0051" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.397" y="-0.9475" curve="-90"/>
<vertex x="0.4421" y="-0.0178" curve="-90.011749"/>
<vertex x="1.3945" y="0.9576" curve="-90"/>
<vertex x="2.3445" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1.3945" y="-0.4395" curve="-90.012891"/>
<vertex x="0.95" y="-0.0153" curve="-90"/>
<vertex x="1.3945" y="0.452" curve="-90"/>
<vertex x="1.8364" y="-0.0051" curve="-90.012967"/>
</polygon>
</package>
<package name="CAP-PTH-SMALLEZ">
<description>This is the "EZ" version of the .1" spaced ceramic thru-hole cap.&lt;br&gt;
It has reduced top mask to make it harder to put the component on the wrong side of the board.</description>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651" stop="no"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651" stop="no"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
<circle x="0" y="0" radius="0.898025" width="0" layer="30"/>
<circle x="2.54" y="0" radius="0.915809375" width="0" layer="30"/>
<circle x="0" y="0" radius="0.40160625" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.40160625" width="0" layer="29"/>
</package>
</packages>
<symbols>
<symbol name="CAP">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="10UF-6.3V-20%(1206)" prefix="C" uservalue="yes">
<description>Ceramic&lt;br&gt;
CAP-10057</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-10057"/>
<attribute name="VALUE" value="10uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP" prefix="C" uservalue="yes">
<description>&lt;b&gt;Capacitor&lt;/b&gt;
Standard 0603 ceramic capacitor, and 0.1" leaded capacitor.</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="PTH" package="CAP-PTH-SMALL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH2" package="CAP-PTH-SMALL2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH3" package="CAP-PTH-LARGE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="GRM43D">
<connects>
<connect gate="G$1" pin="1" pad="A"/>
<connect gate="G$1" pin="2" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-CAP" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402-CAP" package="0402-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH1" package="CAP-PTH-5MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_" package="AXIAL-5MM">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1210" package="1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ASMD" package="CTZ3">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="CAP-PTH-SMALL-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="CAP-PTH-SMALLEZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1NF/1000PF-50V-10%(0603)" prefix="C" uservalue="yes">
<description>CAP-07886</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-07886" constant="no"/>
<attribute name="VALUE" value="1nF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1.0UF-16V-10%(0603)" prefix="C" uservalue="yes">
<description>CAP-00868</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-00868"/>
<attribute name="VALUE" value="1.0uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0.1UF-25V-5%(0603)" prefix="C" uservalue="yes">
<description>CAP-08604</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-08604"/>
<attribute name="VALUE" value="0.1uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-DiscreteSemi">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find discrete semiconductors- transistors, diodes, TRIACs, optoisolators, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="DPAK">
<wire x1="3.2766" y1="2.4654" x2="3.277" y2="-3.729" width="0.2032" layer="21"/>
<wire x1="3.277" y1="-3.729" x2="-3.277" y2="-3.729" width="0.2032" layer="21"/>
<wire x1="-3.277" y1="-3.729" x2="-3.2766" y2="2.4654" width="0.2032" layer="21"/>
<wire x1="-3.277" y1="2.465" x2="3.2774" y2="2.4646" width="0.2032" layer="51"/>
<wire x1="-2.5654" y1="2.567" x2="-2.5654" y2="3.2782" width="0.2032" layer="51"/>
<wire x1="-2.5654" y1="3.2782" x2="-2.1082" y2="3.7354" width="0.2032" layer="51"/>
<wire x1="-2.1082" y1="3.7354" x2="2.1082" y2="3.7354" width="0.2032" layer="51"/>
<wire x1="2.1082" y1="3.7354" x2="2.5654" y2="3.2782" width="0.2032" layer="51"/>
<wire x1="2.5654" y1="3.2782" x2="2.5654" y2="2.567" width="0.2032" layer="51"/>
<wire x1="2.5654" y1="2.567" x2="-2.5654" y2="2.567" width="0.2032" layer="51"/>
<rectangle x1="-2.7178" y1="-6.7262" x2="-1.8542" y2="-3.8306" layer="51"/>
<rectangle x1="1.8542" y1="-6.7262" x2="2.7178" y2="-3.8306" layer="51"/>
<rectangle x1="-0.4318" y1="-4.5926" x2="0.4318" y2="-3.8306" layer="21"/>
<smd name="1" x="-2.28" y="-5.31" dx="1.6" dy="3" layer="1"/>
<smd name="3" x="2.28" y="-5.31" dx="1.6" dy="3" layer="1"/>
<smd name="4" x="0" y="1.588" dx="4.826" dy="5.715" layer="1"/>
<text x="-3.683" y="-3.702" size="0.4064" layer="25" rot="R90">&gt;NAME</text>
<text x="3.937" y="-3.702" size="0.4064" layer="27" rot="R90">&gt;VALUE</text>
<polygon width="0.1998" layer="51">
<vertex x="-2.5654" y="2.567"/>
<vertex x="-2.5654" y="3.2782"/>
<vertex x="-2.1082" y="3.7354"/>
<vertex x="2.1082" y="3.7354"/>
<vertex x="2.5654" y="3.2782"/>
<vertex x="2.5654" y="2.567"/>
</polygon>
</package>
<package name="POWERPAK1212-8">
<description>Vishay PowerPAK 1212-8 single device package&lt;br&gt;
High-power, low thermal resistance package.</description>
<smd name="S3" x="-1.4224" y="-0.3302" dx="0.9906" dy="0.4064" layer="1"/>
<smd name="S2" x="-1.4224" y="0.3302" dx="0.9906" dy="0.4064" layer="1"/>
<smd name="S1" x="-1.4224" y="0.9906" dx="0.9906" dy="0.4064" layer="1"/>
<smd name="G" x="-1.4224" y="-0.9906" dx="0.9906" dy="0.4064" layer="1"/>
<smd name="D2" x="1.5494" y="0.3302" dx="0.762" dy="0.4064" layer="1"/>
<smd name="D1" x="1.5494" y="0.9906" dx="0.762" dy="0.4064" layer="1"/>
<smd name="D3" x="1.5494" y="-0.3302" dx="0.762" dy="0.4064" layer="1"/>
<smd name="D4" x="1.5494" y="-0.9906" dx="0.762" dy="0.4064" layer="1"/>
<smd name="DPAD" x="0.5842" y="0" dx="1.7272" dy="2.2352" layer="1"/>
<wire x1="-1.5" y1="1.5" x2="1.5" y2="1.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="1.5" x2="1.5" y2="1.35" width="0.127" layer="21"/>
<wire x1="-1.5" y1="1.5" x2="-1.5" y2="1.4" width="0.127" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="1.5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="-1.5" x2="1.5" y2="-1.35" width="0.127" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="-1.5" y2="-1.35" width="0.127" layer="21"/>
<text x="-1.143" y="0.508" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-1.143" y="-0.381" size="0.4064" layer="25">&gt;NAME</text>
</package>
<package name="SO08">
<description>&lt;b&gt;Small Outline Package&lt;/b&gt; Fits JEDEC packages (narrow SOIC-8)</description>
<wire x1="-2.362" y1="-1.803" x2="2.362" y2="-1.803" width="0.1524" layer="51"/>
<wire x1="2.362" y1="-1.803" x2="2.362" y2="1.803" width="0.1524" layer="21"/>
<wire x1="2.362" y1="1.803" x2="-2.362" y2="1.803" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="1.803" x2="-2.362" y2="-1.803" width="0.1524" layer="21"/>
<circle x="-1.8034" y="-0.9906" radius="0.1436" width="0.2032" layer="21"/>
<smd name="1" x="-1.905" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="2" x="-0.635" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="3" x="0.635" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="4" x="1.905" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="5" x="1.905" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="6" x="0.635" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="7" x="-0.635" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="8" x="-1.905" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<text x="-1.27" y="-0.635" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-1.27" y="0" size="0.4064" layer="25">&gt;NAME</text>
<rectangle x1="-2.0828" y1="-2.8702" x2="-1.7272" y2="-1.8542" layer="51"/>
<rectangle x1="-0.8128" y1="-2.8702" x2="-0.4572" y2="-1.8542" layer="51"/>
<rectangle x1="0.4572" y1="-2.8702" x2="0.8128" y2="-1.8542" layer="51"/>
<rectangle x1="1.7272" y1="-2.8702" x2="2.0828" y2="-1.8542" layer="51"/>
<rectangle x1="-2.0828" y1="1.8542" x2="-1.7272" y2="2.8702" layer="51"/>
<rectangle x1="-0.8128" y1="1.8542" x2="-0.4572" y2="2.8702" layer="51"/>
<rectangle x1="0.4572" y1="1.8542" x2="0.8128" y2="2.8702" layer="51"/>
<rectangle x1="1.7272" y1="1.8542" x2="2.0828" y2="2.8702" layer="51"/>
</package>
<package name="SOT323">
<wire x1="1.1224" y1="0.6604" x2="1.1224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.1224" y1="-0.6604" x2="-1.1224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.1224" y1="-0.6604" x2="-1.1224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.1224" y1="0.6604" x2="1.1224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="0.7" x2="-1.1" y2="0.7" width="0.2032" layer="21"/>
<wire x1="-1.1" y1="0.7" x2="-1.1" y2="-0.1" width="0.2032" layer="21"/>
<wire x1="0.8" y1="0.7" x2="1.1" y2="0.7" width="0.2032" layer="21"/>
<wire x1="1.1" y1="0.7" x2="1.1" y2="-0.1" width="0.2032" layer="21"/>
<smd name="1" x="-0.65" y="-0.925" dx="0.7" dy="0.7" layer="1"/>
<smd name="2" x="0.65" y="-0.925" dx="0.7" dy="0.7" layer="1"/>
<smd name="3" x="0" y="0.925" dx="0.7" dy="0.7" layer="1"/>
<text x="-1.1255" y="1.878" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.116" y="1.3095" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="TO220V">
<description>&lt;b&gt;TO 220 Vertical&lt;/b&gt; Package works with various parts including N-Channel MOSFET SparkFun SKU: COM-10213</description>
<wire x1="-5.08" y1="2.032" x2="-5.08" y2="-0.381" width="0.2032" layer="21"/>
<wire x1="5.08" y1="2.032" x2="5.08" y2="-0.381" width="0.2032" layer="21"/>
<wire x1="5.08" y1="2.032" x2="-5.08" y2="2.032" width="0.2032" layer="21"/>
<wire x1="-5.08" y1="2.032" x2="-5.08" y2="3.048" width="0.2032" layer="21"/>
<wire x1="-5.08" y1="3.048" x2="5.08" y2="3.048" width="0.2032" layer="21"/>
<wire x1="5.08" y1="3.048" x2="5.08" y2="2.032" width="0.2032" layer="21"/>
<wire x1="-5.08" y1="-0.381" x2="-4.191" y2="-1.27" width="0.2032" layer="21" curve="92.798868"/>
<wire x1="4.191" y1="-1.27" x2="5.08" y2="-0.381" width="0.2032" layer="21" curve="92.798868"/>
<wire x1="-4.191" y1="-1.27" x2="-3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.191" y1="-1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<rectangle x1="-5.08" y1="2.032" x2="5.08" y2="3.048" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.794" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.302" y="-3.302" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="TO-92">
<description>&lt;b&gt;TO 92&lt;/b&gt;</description>
<wire x1="-0.7863" y1="2.5485" x2="-2.0946" y2="-1.651" width="0.2032" layer="21" curve="111.098962"/>
<wire x1="2.0945" y1="-1.651" x2="0.7863" y2="2.548396875" width="0.2032" layer="21" curve="111.099507"/>
<wire x1="-2.0945" y1="-1.651" x2="2.0945" y2="-1.651" width="0.2032" layer="21"/>
<wire x1="-2.6549" y1="-0.254" x2="-2.2537" y2="-0.254" width="0.2032" layer="21"/>
<wire x1="-0.2863" y1="-0.254" x2="0.2863" y2="-0.254" width="0.2032" layer="21"/>
<wire x1="2.2537" y1="-0.254" x2="2.6549" y2="-0.254" width="0.2032" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.8796"/>
<pad name="2" x="0" y="1.905" drill="0.8128" diameter="1.8796"/>
<pad name="3" x="1.27" y="0" drill="0.8128" diameter="1.8796"/>
<text x="3.175" y="0.635" size="0.4064" layer="25" ratio="10">&gt;NAME</text>
<text x="3.175" y="-1.27" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SOT23-3">
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.4224" y1="-0.6604" x2="-1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="-0.6604" x2="-1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="0.6604" x2="1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="0.7" x2="-1.4" y2="0.7" width="0.2032" layer="21"/>
<wire x1="-1.4" y1="0.7" x2="-1.4" y2="-0.1" width="0.2032" layer="21"/>
<wire x1="0.8" y1="0.7" x2="1.4" y2="0.7" width="0.2032" layer="21"/>
<wire x1="1.4" y1="0.7" x2="1.4" y2="-0.1" width="0.2032" layer="21"/>
<smd name="1" x="-0.95" y="-1" dx="0.8" dy="0.9" layer="1"/>
<smd name="2" x="0.95" y="-1" dx="0.8" dy="0.9" layer="1"/>
<smd name="3" x="0" y="1.1" dx="0.8" dy="0.9" layer="1"/>
<text x="-0.8255" y="1.778" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-0.1905" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="SOD-523">
<smd name="C" x="0.7" y="0" dx="0.4" dy="0.4" layer="1"/>
<smd name="A" x="-0.7" y="0" dx="0.4" dy="0.4" layer="1"/>
<wire x1="-0.6" y1="-0.4" x2="0.4" y2="-0.4" width="0.127" layer="21"/>
<wire x1="0.4" y1="-0.4" x2="0.6" y2="-0.4" width="0.127" layer="21"/>
<wire x1="0.6" y1="0.4" x2="0.4" y2="0.4" width="0.127" layer="21"/>
<wire x1="0.4" y1="0.4" x2="-0.6" y2="0.4" width="0.127" layer="21"/>
<wire x1="0.6" y1="0.4" x2="0.4" y2="0.6" width="0.127" layer="21"/>
<wire x1="0.6" y1="-0.4" x2="0.4" y2="-0.6" width="0.127" layer="21"/>
<wire x1="0.4" y1="-0.6" x2="0.4" y2="-0.4" width="0.127" layer="21"/>
<wire x1="0.4" y1="0.6" x2="0.4" y2="0.4" width="0.127" layer="21"/>
<wire x1="-0.6" y1="-0.4" x2="0.3" y2="-0.4" width="0.127" layer="51"/>
<wire x1="0.3" y1="-0.4" x2="0.6" y2="-0.4" width="0.127" layer="51"/>
<wire x1="0.6" y1="-0.4" x2="0.6" y2="-0.1" width="0.127" layer="51"/>
<wire x1="0.6" y1="-0.1" x2="0.6" y2="0.1" width="0.127" layer="51"/>
<wire x1="0.6" y1="0.1" x2="0.6" y2="0.4" width="0.127" layer="51"/>
<wire x1="0.6" y1="0.4" x2="0.3" y2="0.4" width="0.127" layer="51"/>
<wire x1="0.3" y1="0.4" x2="-0.6" y2="0.4" width="0.127" layer="51"/>
<wire x1="-0.6" y1="0.4" x2="-0.6" y2="0.1" width="0.127" layer="51"/>
<wire x1="-0.6" y1="0.1" x2="-0.6" y2="-0.1" width="0.127" layer="51"/>
<wire x1="-0.6" y1="-0.1" x2="-0.6" y2="-0.4" width="0.127" layer="51"/>
<wire x1="0.6" y1="0.1" x2="0.8" y2="0.1" width="0.127" layer="51"/>
<wire x1="0.8" y1="0.1" x2="0.8" y2="-0.1" width="0.127" layer="51"/>
<wire x1="0.8" y1="-0.1" x2="0.6" y2="-0.1" width="0.127" layer="51"/>
<wire x1="-0.6" y1="-0.1" x2="-0.8" y2="-0.1" width="0.127" layer="51"/>
<wire x1="-0.6" y1="0.1" x2="-0.8" y2="0.1" width="0.127" layer="51"/>
<wire x1="-0.8" y1="0.1" x2="-0.8" y2="-0.1" width="0.127" layer="51"/>
<wire x1="0.3" y1="0.4" x2="0.3" y2="-0.4" width="0.127" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MOSFET-NCHANNEL-1">
<circle x="0" y="-1.905" radius="0.127" width="0.4064" layer="94"/>
<circle x="0" y="1.905" radius="0.127" width="0.4064" layer="94"/>
<rectangle x1="-2.794" y1="-2.54" x2="-2.032" y2="-1.27" layer="94"/>
<rectangle x1="-2.794" y1="1.27" x2="-2.032" y2="2.54" layer="94"/>
<rectangle x1="-2.794" y1="-0.889" x2="-2.032" y2="0.889" layer="94"/>
<wire x1="-3.6576" y1="2.413" x2="-3.6576" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="1.905" x2="-2.0066" y2="1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="1.905" x2="2.54" y2="1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.905" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="0" x2="-0.762" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="-0.508" x2="-0.762" y2="0.508" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="0.508" x2="-2.032" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="0.254" x2="-1.778" y2="0" width="0.3048" layer="94"/>
<wire x1="-1.778" y1="0" x2="-0.889" y2="-0.254" width="0.3048" layer="94"/>
<wire x1="-0.889" y1="-0.254" x2="-0.889" y2="0" width="0.3048" layer="94"/>
<wire x1="-0.889" y1="0" x2="-1.143" y2="0" width="0.3048" layer="94"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="0.762" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.762" x2="1.905" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="1.905" y1="-0.635" x2="3.175" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="3.175" y1="-0.635" x2="2.54" y2="0.762" width="0.1524" layer="94"/>
<wire x1="1.905" y1="0.762" x2="2.54" y2="0.762" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.762" x2="3.175" y2="0.762" width="0.1524" layer="94"/>
<wire x1="3.175" y1="0.762" x2="3.429" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.905" y1="0.762" x2="1.651" y2="0.508" width="0.1524" layer="94"/>
<pin name="D" x="0" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="G" x="-7.62" y="0" visible="off" length="short" direction="pas"/>
<pin name="S" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<text x="5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="2.54" size="0.8128" layer="93">D</text>
<text x="-1.27" y="-3.556" size="0.8128" layer="93">S</text>
<text x="-5.08" y="-1.27" size="0.8128" layer="93">G</text>
</symbol>
<symbol name="DIODE-SCHOTTKY">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.778" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.27" x2="0.762" y2="-1.524" width="0.254" layer="94"/>
<text x="2.54" y="0.4826" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.3114" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="point" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="point" direction="pas" rot="R180"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="0" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOSFET-NCHANNEL" prefix="Q">
<description>&lt;B&gt;Common NMOSFET Parts&lt;/b&gt;&lt;p&gt;
&lt;table border = "1"&gt;
&lt;tr&gt;&lt;th&gt;MFG P/N&lt;/th&gt;&lt;th&gt;Store ID&lt;/th&gt;&lt;th&gt;Prod ID&lt;/th&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;FDD8780&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;TRANS-09984&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SI7820DN&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;TRANS-11055&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;FDS6630A&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;IC-08089&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;2N7002PW&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;TRANS-11151&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;FQP30N06L&lt;/td&gt;  &lt;td&gt;COM-10213&lt;/td&gt;&lt;td&gt;TRANS-10060&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;BSS123LT1G&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;TRANS-08345&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;BSS138&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;TRANS-00830&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;BS170&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;2N7000&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;</description>
<gates>
<gate name="G$1" symbol="MOSFET-NCHANNEL-1" x="0" y="0"/>
</gates>
<devices>
<device name="FDD8780" package="DPAK">
<connects>
<connect gate="G$1" pin="D" pad="4"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-09984"/>
</technology>
</technologies>
</device>
<device name="SI7820DN" package="POWERPAK1212-8">
<connects>
<connect gate="G$1" pin="D" pad="D1 D2 D3 D4 DPAD"/>
<connect gate="G$1" pin="G" pad="G"/>
<connect gate="G$1" pin="S" pad="S1 S2 S3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-11055"/>
</technology>
</technologies>
</device>
<device name="FDS6630A" package="SO08">
<connects>
<connect gate="G$1" pin="D" pad="5 6 7 8"/>
<connect gate="G$1" pin="G" pad="4"/>
<connect gate="G$1" pin="S" pad="1 2 3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="IC-08089"/>
</technology>
</technologies>
</device>
<device name="2N7002PW" package="SOT323">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-11151"/>
</technology>
</technologies>
</device>
<device name="FQP30N06L" package="TO220V">
<connects>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-10060"/>
</technology>
</technologies>
</device>
<device name="BS170" package="TO-92">
<connects>
<connect gate="G$1" pin="D" pad="1"/>
<connect gate="G$1" pin="G" pad="2"/>
<connect gate="G$1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2N7000" package="TO-92">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="2"/>
<connect gate="G$1" pin="S" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="BSS138" package="SOT23-3">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-00830" constant="no"/>
</technology>
</technologies>
</device>
<device name="BSS123LT1G" package="SOT23-3">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-08345" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RB751" prefix="D" uservalue="yes">
<description>40V 120mA SOD-523 Schottky&lt;br&gt;
DIO-11018</description>
<gates>
<gate name="G$1" symbol="DIODE-SCHOTTKY" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOD-523">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-11018"/>
<attribute name="VALUE" value="RB751" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Aesthetics">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find non-functional items- supply symbols, logos, notations, frame blocks, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
</packages>
<symbols>
<symbol name="DGND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC2">
<wire x1="0.762" y1="1.27" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<text x="-1.016" y="3.556" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="DGND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="VCC2" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Resistors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1206">
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="AXIAL-0.3">
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-1.027" y1="1.245" x2="1.027" y2="1.245" width="0.1524" layer="21"/>
<wire x1="-1.002" y1="-1.245" x2="1.016" y2="-1.245" width="0.1524" layer="21"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.54" y="1.5875" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.032" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="0603-RES">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2286" y1="-0.381" x2="0.2286" y2="0.381" layer="21"/>
</package>
<package name="1/6W-RES">
<description>1/6W Thru-hole Resistor - *UNPROVEN*</description>
<wire x1="-1.55" y1="0.85" x2="-1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="-1.55" y1="-0.85" x2="1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="-0.85" x2="1.55" y2="0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="0.85" x2="-1.55" y2="0.85" width="0.2032" layer="21"/>
<pad name="1" x="-2.5" y="0" drill="0.762" diameter="1.6764"/>
<pad name="2" x="2.5" y="0" drill="0.762" diameter="1.6764"/>
<text x="-1.2662" y="0.9552" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.423" y="-0.4286" size="0.8128" layer="21" ratio="15">&gt;VALUE</text>
</package>
<package name="R2512">
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
</package>
<package name="AXIAL-0.4">
<description>1/4W Resistor, 0.4" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-3.15" y1="-1.2" x2="-3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="-3.15" y1="1.2" x2="3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="1.2" x2="3.15" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="-1.2" x2="-3.15" y2="-1.2" width="0.2032" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="5.08" y="0" drill="0.9" diameter="1.8796"/>
<text x="-3.175" y="1.905" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-2.286" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.5">
<description>1/2W Resistor, 0.5" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-4.5" y1="-1.65" x2="-4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="1.65" x2="4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="1.65" x2="4.5" y2="-1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="-1.65" x2="-4.5" y2="-1.65" width="0.2032" layer="21"/>
<pad name="P$1" x="-6.35" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="6.35" y="0" drill="0.9" diameter="1.8796"/>
<text x="-4.445" y="2.54" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-3.429" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.6">
<description>1W Resistor, 0.6" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-5.75" y1="-2.25" x2="-5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-5.75" y1="2.25" x2="5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="2.25" x2="5.75" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="-2.25" x2="-5.75" y2="-2.25" width="0.2032" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="7.62" y="0" drill="1.2" diameter="1.8796"/>
<text x="-5.715" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-4.064" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.8">
<description>2W Resistor, 0.8" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-7.75" y1="-2.5" x2="-7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-7.75" y1="2.5" x2="7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="2.5" x2="7.75" y2="-2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="-2.5" x2="-7.75" y2="-2.5" width="0.2032" layer="21"/>
<pad name="P$1" x="-10.16" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="10.16" y="0" drill="1.2" diameter="1.8796"/>
<text x="-7.62" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-5.969" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.3-KIT">
<description>&lt;h3&gt;AXIAL-0.3-KIT&lt;/h3&gt;

Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;br&gt;
&lt;br&gt;

&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of the AXIAL-0.3 package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.159" y="-0.762" size="1.27" layer="21" font="vector" ratio="15">&gt;Value</text>
<polygon width="0.127" layer="30">
<vertex x="3.8201" y="-0.9449" curve="-90"/>
<vertex x="2.8652" y="-0.0152" curve="-90.011749"/>
<vertex x="3.8176" y="0.9602" curve="-90"/>
<vertex x="4.7676" y="-0.0178" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.8176" y="-0.4369" curve="-90.012891"/>
<vertex x="3.3731" y="-0.0127" curve="-90"/>
<vertex x="3.8176" y="0.4546" curve="-90"/>
<vertex x="4.2595" y="-0.0025" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.8075" y="-0.9525" curve="-90"/>
<vertex x="-4.7624" y="-0.0228" curve="-90.011749"/>
<vertex x="-3.81" y="0.9526" curve="-90"/>
<vertex x="-2.86" y="-0.0254" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.81" y="-0.4445" curve="-90.012891"/>
<vertex x="-4.2545" y="-0.0203" curve="-90"/>
<vertex x="-3.81" y="0.447" curve="-90"/>
<vertex x="-3.3681" y="-0.0101" curve="-90.012967"/>
</polygon>
</package>
<package name="AXIAL-0.3EZ">
<description>This is the "EZ" version of the standard .3" spaced resistor package.&lt;br&gt;
It has a reduced top mask to make it harder to install upside-down.</description>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="-3.81" y="0" radius="0.508" width="0" layer="29"/>
<circle x="3.81" y="0" radius="0.523634375" width="0" layer="29"/>
<circle x="-3.81" y="0" radius="1.02390625" width="0" layer="30"/>
<circle x="3.81" y="0" radius="1.04726875" width="0" layer="30"/>
</package>
<package name="AXIAL-0.1EZ">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="0" y="0" radius="1.016" width="0" layer="30"/>
<circle x="2.54" y="0" radius="1.016" width="0" layer="30"/>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.4572" width="0" layer="29"/>
</package>
<package name="AXIAL-0.1">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<description>&lt;b&gt;Resistor&lt;/b&gt;
Basic schematic elements and footprints for 0603, 1206, and PTH resistors.</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AXIAL-0.3" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805-RES" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-RES" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/6W" package="1/6W-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W" package="AXIAL-0.4">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/2W" package="AXIAL-0.5">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1W" package="AXIAL-0.6">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-2W" package="AXIAL-0.8">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="AXIAL-0.3EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W-VERT-KIT" package="AXIAL-0.1EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W-VERT" package="AXIAL-0.1">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="100OHM1/10W1%(0603)" prefix="R" uservalue="yes">
<description>RES-07863</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07863" constant="no"/>
<attribute name="VALUE" value="100" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="100KOHM1/10W1%(0603)" prefix="R" uservalue="yes">
<description>RES-07828</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07828"/>
<attribute name="VALUE" value="100k" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22KOHM1/10W1%(0603)" prefix="R" uservalue="yes">
<description>RES-07853</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07853" constant="no"/>
<attribute name="VALUE" value="22K" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="47KOHM1/10W1%(0603)" prefix="R" uservalue="yes">
<description>RES-07871</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07871"/>
<attribute name="VALUE" value="47K" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="10KOHM1/10W1%(0603)" prefix="R" uservalue="yes">
<description>RES-00824</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-00824"/>
<attribute name="VALUE" value="10K" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2.2KOHM1/10W1%(0603)" prefix="R" uservalue="yes">
<description>RES-08272</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-08272"/>
<attribute name="VALUE" value="2.2k" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1KOHM1/10W1%(0603)" prefix="R" uservalue="yes">
<description>RES-07856</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07856"/>
<attribute name="VALUE" value="1K" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="4.7KOHM-1/10W-1%(0603)" prefix="R" uservalue="yes">
<description>RES-07857</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07857" constant="no"/>
<attribute name="VALUE" value="4.7K" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Sensors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find sensors- accelerometers, gyros, compasses, magnetometers, light sensors, imagers, temp sensors, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="MICS_10-SMD">
<wire x1="-3.5" y1="-2.5" x2="3.5" y2="-2.5" width="0.127" layer="51"/>
<wire x1="3.5" y1="2.5" x2="3.5" y2="2" width="0.254" layer="21"/>
<wire x1="-3.5" y1="2.5" x2="-3.5" y2="2" width="0.254" layer="21"/>
<circle x="2.27" y="3.07" radius="0.2" width="0.254" layer="21"/>
<smd name="E" x="-3.45" y="-1.27" dx="0.7" dy="2" layer="1" rot="R90"/>
<smd name="F" x="-1.27" y="-2.45" dx="0.7" dy="2" layer="1"/>
<smd name="G" x="0" y="-2.45" dx="0.7" dy="2" layer="1"/>
<smd name="H" x="1.27" y="-2.45" dx="0.7" dy="2" layer="1"/>
<smd name="A" x="1.27" y="2.45" dx="0.7" dy="2" layer="1"/>
<smd name="B" x="0" y="2.45" dx="0.7" dy="2" layer="1"/>
<smd name="C" x="-1.27" y="2.45" dx="0.7" dy="2" layer="1"/>
<smd name="D" x="-3.45" y="1.27" dx="0.7" dy="2" layer="1" rot="R90"/>
<text x="-1.27" y="-0.635" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-1.27" y="0" size="0.4064" layer="25">&gt;NAME</text>
<rectangle x1="-0.3" y1="1.5" x2="0.3" y2="2.5" layer="51"/>
<smd name="J" x="3.45" y="-1.27" dx="0.7" dy="2" layer="1" rot="R90"/>
<smd name="K" x="3.45" y="1.27" dx="0.7" dy="2" layer="1" rot="R90"/>
<rectangle x1="-1.57" y1="1.5" x2="-0.97" y2="2.5" layer="51"/>
<rectangle x1="0.97" y1="1.5" x2="1.57" y2="2.5" layer="51"/>
<rectangle x1="-1.57" y1="-2.5" x2="-0.97" y2="-1.5" layer="51"/>
<rectangle x1="-0.3" y1="-2.5" x2="0.3" y2="-1.5" layer="51"/>
<rectangle x1="0.97" y1="-2.5" x2="1.57" y2="-1.5" layer="51"/>
<rectangle x1="-3.5" y1="0.97" x2="-2.5" y2="1.57" layer="51"/>
<rectangle x1="-3.5" y1="-1.57" x2="-2.5" y2="-0.97" layer="51"/>
<rectangle x1="2.5" y1="0.97" x2="3.5" y2="1.57" layer="51"/>
<rectangle x1="2.5" y1="-1.57" x2="3.5" y2="-0.97" layer="51"/>
<wire x1="-3.5" y1="2.5" x2="-3.5" y2="-2.5" width="0.127" layer="51"/>
<wire x1="-3.5" y1="2.5" x2="3.5" y2="2.5" width="0.127" layer="51"/>
<wire x1="3.5" y1="2.5" x2="3.5" y2="-2.5" width="0.127" layer="51"/>
<wire x1="-3.5" y1="-2.5" x2="-3.5" y2="-2" width="0.254" layer="21"/>
<wire x1="3.5" y1="-2.5" x2="3.5" y2="-2" width="0.254" layer="21"/>
<wire x1="-3.5" y1="2.5" x2="-2" y2="2.5" width="0.254" layer="21"/>
<wire x1="3.5" y1="2.5" x2="2" y2="2.5" width="0.254" layer="21"/>
<wire x1="-3.5" y1="-2.5" x2="-2" y2="-2.5" width="0.254" layer="21"/>
<wire x1="3.5" y1="-2.5" x2="2" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-3.5" y1="0.5" x2="-3.5" y2="-0.5" width="0.254" layer="21"/>
<wire x1="3.5" y1="0.5" x2="3.5" y2="-0.5" width="0.254" layer="21"/>
<circle x="1.27" y="0.97" radius="0.2" width="0.127" layer="51"/>
</package>
<package name="MIC-9.7MM">
<circle x="0" y="0" radius="4.85" width="0.2032" layer="21"/>
<pad name="1" x="-2" y="1.27" drill="0.8" diameter="1.6764"/>
<pad name="2" x="-2" y="-1.27" drill="0.8" diameter="1.6764"/>
<text x="-1.386" y="-2.93" size="1.27" layer="21">-</text>
</package>
<package name="MIC_ELECTRET_SMD">
<circle x="0" y="0" radius="1.626" width="1" layer="29"/>
<circle x="0" y="0" radius="1.625" width="0.75" layer="31"/>
<circle x="0" y="0" radius="1.625" width="0.75" layer="1"/>
<circle x="0" y="0" radius="3.3" width="0.4" layer="21"/>
<smd name="1" x="0" y="0" dx="1.3" dy="1.3" layer="1" roundness="100"/>
<smd name="2" x="0" y="1.6" dx="0.75" dy="0.75" layer="1" roundness="100"/>
</package>
</packages>
<symbols>
<symbol name="MICS-4514">
<wire x1="-12.7" y1="7.62" x2="-12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-7.62" x2="12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="12.7" y2="7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="7.62" x2="-12.7" y2="7.62" width="0.254" layer="94"/>
<text x="-12.7" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="RH1_OX" x="-17.78" y="5.08" length="middle"/>
<pin name="RS1_OX" x="-17.78" y="2.54" length="middle"/>
<pin name="RH2_OX" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="RS2_OX" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="RS1_RED" x="-17.78" y="-5.08" length="middle"/>
<pin name="RH1_RED" x="-17.78" y="-2.54" length="middle"/>
<pin name="RS2_RED" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="RH2_RED" x="17.78" y="-2.54" length="middle" rot="R180"/>
</symbol>
<symbol name="BUZZER">
<wire x1="-1.27" y1="1.905" x2="0" y2="1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="1.905" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="1.905" x2="0" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0.635" y1="3.175" x2="0.635" y2="0.635" width="0.1524" layer="94"/>
<wire x1="0.635" y1="0.635" x2="1.905" y2="0.635" width="0.1524" layer="94"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="3.175" width="0.1524" layer="94"/>
<wire x1="1.905" y1="3.175" x2="0.635" y2="3.175" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="1.905" x2="3.81" y2="1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="3.81" width="0.254" layer="94"/>
<wire x1="5.08" y1="3.81" x2="5.715" y2="3.81" width="0.254" layer="94"/>
<wire x1="5.715" y1="3.81" x2="5.715" y2="4.445" width="0.254" layer="94"/>
<wire x1="5.715" y1="4.445" x2="-3.175" y2="4.445" width="0.254" layer="94"/>
<wire x1="-3.175" y1="4.445" x2="-3.175" y2="3.81" width="0.254" layer="94"/>
<wire x1="-3.175" y1="3.81" x2="-2.54" y2="3.81" width="0.254" layer="94"/>
<wire x1="-2.54" y1="3.81" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="3.81" x2="5.08" y2="3.81" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="6.35" y="0" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="1" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MICS-4514">
<description>Metal oxide MEMS carbon monoxide (CO) and NOx sensor in an SMD package.</description>
<gates>
<gate name="G$1" symbol="MICS-4514" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MICS_10-SMD">
<connects>
<connect gate="G$1" pin="RH1_OX" pad="A"/>
<connect gate="G$1" pin="RH1_RED" pad="C"/>
<connect gate="G$1" pin="RH2_OX" pad="H"/>
<connect gate="G$1" pin="RH2_RED" pad="F"/>
<connect gate="G$1" pin="RS1_OX" pad="B"/>
<connect gate="G$1" pin="RS1_RED" pad="D"/>
<connect gate="G$1" pin="RS2_OX" pad="J"/>
<connect gate="G$1" pin="RS2_RED" pad="G"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="COMP-12310"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MIC">
<description>Omni-directional electret microphone. 9.7mm standard diameter.</description>
<gates>
<gate name="G$1" symbol="BUZZER" x="0" y="0"/>
</gates>
<devices>
<device name="9.7MM" package="MIC-9.7MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="COMP-08856" constant="no"/>
</technology>
</technologies>
</device>
<device name="ELECTRET_SMD" package="MIC_ELECTRET_SMD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ML8511">
<packages>
<package name="ML8511">
<wire x1="-1.85" y1="1.85" x2="1.85" y2="1.85" width="0.127" layer="51"/>
<wire x1="2" y1="1.7" x2="2" y2="-1.7" width="0.127" layer="51"/>
<smd name="9" x="1.5" y="-0.5" dx="0.4" dy="0.4" layer="1"/>
<smd name="10" x="1.5" y="-1.5" dx="0.4" dy="0.4" layer="1"/>
<smd name="8" x="1.5" y="0.5" dx="0.4" dy="0.4" layer="1"/>
<smd name="7" x="1.5" y="1.5" dx="0.4" dy="0.4" layer="1"/>
<smd name="6" x="0.5" y="1.5" dx="0.4" dy="0.4" layer="1"/>
<smd name="5" x="-0.5" y="1.5" dx="0.4" dy="0.4" layer="1"/>
<smd name="4" x="-1.5" y="1.5" dx="0.4" dy="0.4" layer="1"/>
<smd name="3" x="-1.5" y="0.5" dx="0.4" dy="0.4" layer="1"/>
<smd name="2" x="-1.5" y="-0.5" dx="0.4" dy="0.4" layer="1"/>
<smd name="1" x="-1.5" y="-1.5" dx="0.4" dy="0.4" layer="1"/>
<smd name="12" x="-0.5" y="-1.5" dx="0.4" dy="0.4" layer="1"/>
<smd name="11" x="0.5" y="-1.5" dx="0.4" dy="0.4" layer="1"/>
<wire x1="1.85" y1="-1.85" x2="-1.85" y2="-1.85" width="0.127" layer="51"/>
<wire x1="-2" y1="-1.7" x2="-2" y2="1.7" width="0.127" layer="51"/>
<wire x1="-1.85" y1="1.85" x2="-2" y2="1.7" width="0.127" layer="51" curve="-56.908035"/>
<wire x1="-2" y1="-1.7" x2="-1.85" y2="-1.85" width="0.127" layer="51" curve="-56.908035"/>
<wire x1="1.85" y1="-1.85" x2="2" y2="-1.7" width="0.127" layer="51" curve="-56.908035"/>
<wire x1="2" y1="1.7" x2="1.85" y2="1.85" width="0.127" layer="51" curve="-56.908035"/>
<circle x="-1.05" y="-1.05" radius="0.07" width="0.127" layer="51"/>
<circle x="-1.05" y="-1.05" radius="0.05" width="0.2" layer="29"/>
<wire x1="-2" y1="0.2" x2="-2" y2="-0.2" width="0.2032" layer="21"/>
<wire x1="2" y1="-0.2" x2="2" y2="0.2" width="0.2032" layer="21"/>
<wire x1="0.2" y1="-1.9" x2="-0.2" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="0.2" y1="1.9" x2="-0.2" y2="1.9" width="0.2032" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ML8511">
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<pin name="VDD" x="-10.16" y="5.08" visible="pin" length="short" direction="pwr"/>
<pin name="GND" x="-10.16" y="-5.08" visible="pin" length="short" direction="pwr"/>
<pin name="TR" x="-10.16" y="0" visible="pin" length="short" direction="pwr"/>
<pin name="OUT" x="10.16" y="-5.08" visible="pin" length="short" direction="out" rot="R180"/>
<pin name="EN" x="10.16" y="5.08" visible="pin" length="short" direction="in" rot="R180"/>
<text x="-7.62" y="8.382" size="1.778" layer="95">&gt;Name</text>
<text x="-7.62" y="-10.16" size="1.778" layer="96">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ML8511-UV-SENSOR" prefix="U">
<gates>
<gate name="U1" symbol="ML8511" x="0" y="0"/>
</gates>
<devices>
<device name="SMD" package="ML8511">
<connects>
<connect gate="U1" pin="EN" pad="4"/>
<connect gate="U1" pin="GND" pad="5"/>
<connect gate="U1" pin="OUT" pad="8"/>
<connect gate="U1" pin="TR" pad="10"/>
<connect gate="U1" pin="VDD" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="mike-temp">
<packages>
<package name="TMB-6">
<smd name="1" x="-1.8" y="0.95" dx="1.6" dy="0.7" layer="1"/>
<smd name="2" x="-1.8" y="0" dx="1.6" dy="0.7" layer="1"/>
<smd name="3" x="-1.8" y="-0.95" dx="1.6" dy="0.7" layer="1"/>
<smd name="4" x="1.8" y="-0.95" dx="1.6" dy="0.7" layer="1"/>
<smd name="5" x="1.8" y="0" dx="1.6" dy="0.7" layer="1"/>
<smd name="6" x="1.8" y="0.95" dx="1.6" dy="0.7" layer="1"/>
<wire x1="-1.9" y1="1.3" x2="-1.9" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-1.9" y1="-1.3" x2="1.9" y2="-1.3" width="0.127" layer="51"/>
<wire x1="1.9" y1="-1.3" x2="1.9" y2="1.3" width="0.127" layer="51"/>
<wire x1="1.9" y1="1.3" x2="-1.9" y2="1.3" width="0.127" layer="51"/>
<text x="0" y="1.85" size="0.4064" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.95" size="0.4064" layer="27" rot="R180" align="bottom-center">&gt;VALUE</text>
<wire x1="-1.9" y1="1.5" x2="-1.9" y2="1.6" width="0.127" layer="21"/>
<wire x1="-1.9" y1="1.6" x2="1.9" y2="1.6" width="0.127" layer="21"/>
<wire x1="1.9" y1="1.6" x2="1.9" y2="1.5" width="0.127" layer="21"/>
<wire x1="-1.9" y1="-1.5" x2="-1.9" y2="-1.6" width="0.127" layer="21"/>
<wire x1="-1.9" y1="-1.6" x2="1.9" y2="-1.6" width="0.127" layer="21"/>
<wire x1="1.9" y1="-1.6" x2="1.9" y2="-1.5" width="0.127" layer="21"/>
<circle x="-1.9" y="2.3" radius="0.3" width="0.3048" layer="21"/>
<circle x="-1.9" y="2.3" radius="0.1" width="0.3048" layer="21"/>
<circle x="-1.9" y="2.3" radius="0.2" width="0.3048" layer="21"/>
</package>
<package name="FN-6">
<smd name="1" x="-0.775" y="0.65" dx="1.05" dy="0.3" layer="1" rot="R180"/>
<smd name="2" x="-0.775" y="0" dx="1.05" dy="0.3" layer="1" roundness="100"/>
<smd name="3" x="-0.775" y="-0.65" dx="1.05" dy="0.3" layer="1" roundness="100"/>
<smd name="4" x="0.775" y="-0.65" dx="1.05" dy="0.3" layer="1" roundness="100"/>
<smd name="5" x="0.775" y="0" dx="1.05" dy="0.3" layer="1" roundness="100"/>
<smd name="6" x="0.775" y="0.65" dx="1.05" dy="0.3" layer="1" roundness="100"/>
<wire x1="-1" y1="1" x2="-1" y2="-1" width="0.127" layer="51"/>
<wire x1="-1" y1="-1" x2="1" y2="-1" width="0.127" layer="51"/>
<wire x1="1" y1="-1" x2="1" y2="1" width="0.127" layer="51"/>
<wire x1="1" y1="1" x2="-1" y2="1" width="0.127" layer="51"/>
<text x="0" y="1.25" size="0.4064" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.25" size="0.4064" layer="27" rot="R180" align="bottom-center">&gt;VALUE</text>
<wire x1="-1" y1="1" x2="1" y2="1" width="0.127" layer="21"/>
<wire x1="-1" y1="-1" x2="1" y2="-1" width="0.127" layer="21"/>
<circle x="-0.65" y="1.55" radius="0.1" width="0.3048" layer="21"/>
<circle x="-0.65" y="1.55" radius="0.2" width="0.3048" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="TSL2561">
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<text x="-10.16" y="-10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="10.16" size="1.778" layer="95" rot="MR180">&gt;VALUE</text>
<pin name="SCL" x="-15.24" y="5.08" length="middle" direction="in"/>
<pin name="SDA" x="-15.24" y="2.54" length="middle"/>
<pin name="INT" x="-15.24" y="-5.08" length="middle" direction="out"/>
<pin name="GND" x="15.24" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="ADDR" x="15.24" y="0" length="middle" direction="in" rot="R180"/>
<pin name="VDD" x="15.24" y="5.08" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TSL2561" prefix="U">
<description>&lt;b&gt;TSL2561 illumination sensor&lt;/b&gt;&lt;p&gt;
Approximates Human Eye Response&lt;br&gt;
Precisely Measures Illuminance&lt;br&gt;
Programmable Interrupt Function with
User-Defined Upper and Lower Threshold&lt;br&gt;
400 KHz I2C interface&lt;br&gt;
Programmable Analog Gain and Integration
Time Supporting 1,000,000-to-1 Dynamic
Range&lt;br&gt;
Automatically Rejects 50/60-Hz Lighting
Ripple&lt;br&gt;
Low Active Power (0.75 mW Typical) with
Power Down Mode&lt;br&gt;
RoHS Compliant&lt;p&gt;

The TSL2561 is a light-to-digital converter that transform light intensity to a digital signal output via I2C interface. The device combines one broadband
photodiode (visible plus infrared) and one infrared-responding photodiode on a single CMOS integrated circuit
capable of providing a near-photopic response over an effective 20-bit dynamic range (16-bit resolution). Two
integrating ADCs convert the photodiode currents to a digital output that represents the irradiance measured
on each channel. This digital output can be input to a microprocessor where illuminance (ambient light level)
in lux is derived using an empirical formula to approximate the human eye response. The TSL2561 device supports a traditional level style interrupt that
remains asserted until the firmware clears it.</description>
<gates>
<gate name="G$1" symbol="TSL2561" x="0" y="0"/>
</gates>
<devices>
<device name="T" package="TMB-6">
<connects>
<connect gate="G$1" pin="ADDR" pad="2"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="INT" pad="5"/>
<connect gate="G$1" pin="SCL" pad="4"/>
<connect gate="G$1" pin="SDA" pad="6"/>
<connect gate="G$1" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="FN" package="FN-6">
<connects>
<connect gate="G$1" pin="ADDR" pad="2"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="INT" pad="5"/>
<connect gate="G$1" pin="SCL" pad="4"/>
<connect gate="G$1" pin="SDA" pad="6"/>
<connect gate="G$1" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-AnalogIC">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find all manner of analog ICs- DACs, ADCs, video chips, op-amps, and others.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="SO014">
<wire x1="4.8768" y1="2.1463" x2="-3.6068" y2="2.1463" width="0.1524" layer="21"/>
<wire x1="4.8768" y1="-2.1463" x2="5.2578" y2="-1.7653" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.9878" y1="1.7653" x2="-3.6068" y2="2.1463" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.8768" y1="2.1463" x2="5.2578" y2="1.7653" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.9878" y1="-1.7653" x2="-3.6068" y2="-2.1463" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.6068" y1="-2.1463" x2="4.8768" y2="-2.1463" width="0.1524" layer="21"/>
<wire x1="5.2578" y1="-1.7653" x2="5.2578" y2="1.7653" width="0.1524" layer="21"/>
<wire x1="-3.9878" y1="1.7653" x2="-3.9878" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.9878" y1="1.27" x2="-3.9878" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.9878" y1="-1.27" x2="-3.9878" y2="-1.7653" width="0.1524" layer="21"/>
<wire x1="-3.9878" y1="1.27" x2="-3.9878" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<smd name="1" x="-3.175" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="2" x="-1.905" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="3" x="-0.635" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="4" x="0.635" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="5" x="1.905" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="6" x="3.175" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="7" x="4.445" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="8" x="4.445" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="9" x="3.175" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="10" x="1.905" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="11" x="0.635" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="12" x="-0.635" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="13" x="-1.905" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="14" x="-3.175" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<text x="-4.318" y="-2.6035" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-3.429" y1="-2.2733" x2="-2.921" y2="-2.1463" layer="21"/>
<rectangle x1="-3.429" y1="-2.2733" x2="-2.921" y2="-2.1463" layer="21"/>
<rectangle x1="-3.429" y1="-3.429" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-2.2733" x2="-1.651" y2="-2.1463" layer="21"/>
<rectangle x1="-2.159" y1="-3.429" x2="-1.651" y2="-1.9558" layer="51"/>
<rectangle x1="-0.889" y1="-2.2733" x2="-0.381" y2="-2.1463" layer="21"/>
<rectangle x1="-0.889" y1="-3.429" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="-3.429" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="-2.2733" x2="0.889" y2="-2.1463" layer="21"/>
<rectangle x1="1.651" y1="-2.2733" x2="2.159" y2="-2.1463" layer="21"/>
<rectangle x1="1.651" y1="-3.429" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-2.2733" x2="3.429" y2="-2.1463" layer="21"/>
<rectangle x1="2.921" y1="-3.429" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-2.2733" x2="4.699" y2="-2.1463" layer="21"/>
<rectangle x1="4.191" y1="-3.429" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="2.1463" x2="-2.921" y2="2.2733" layer="21"/>
<rectangle x1="-3.429" y1="2.1463" x2="-2.921" y2="2.2733" layer="21"/>
<rectangle x1="-3.429" y1="2.2733" x2="-2.921" y2="3.7465" layer="51"/>
<rectangle x1="-2.159" y1="2.1463" x2="-1.651" y2="2.2733" layer="21"/>
<rectangle x1="-2.159" y1="2.2733" x2="-1.651" y2="3.7465" layer="51"/>
<rectangle x1="-0.889" y1="2.1463" x2="-0.381" y2="2.2733" layer="21"/>
<rectangle x1="-0.889" y1="2.2733" x2="-0.381" y2="3.7465" layer="51"/>
<rectangle x1="0.381" y1="2.1463" x2="0.889" y2="2.2733" layer="21"/>
<rectangle x1="0.381" y1="2.2733" x2="0.889" y2="3.7465" layer="51"/>
<rectangle x1="1.651" y1="2.1463" x2="2.159" y2="2.2733" layer="21"/>
<rectangle x1="1.651" y1="2.2733" x2="2.159" y2="3.7465" layer="51"/>
<rectangle x1="2.921" y1="2.1463" x2="3.429" y2="2.2733" layer="21"/>
<rectangle x1="2.921" y1="2.2733" x2="3.429" y2="3.7465" layer="51"/>
<rectangle x1="4.191" y1="2.1463" x2="4.699" y2="2.2733" layer="21"/>
<rectangle x1="4.191" y1="2.2733" x2="4.699" y2="3.7465" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="LMV324">
<wire x1="12.7" y1="0" x2="5.08" y2="-3.048" width="0.254" layer="94"/>
<wire x1="5.08" y1="-3.048" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="5.08" y2="3.048" width="0.254" layer="94"/>
<pin name="-IN" x="-2.54" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="+IN" x="-2.54" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="-V" x="5.08" y="-7.62" length="short" direction="pwr" rot="R90"/>
<pin name="OUT" x="15.24" y="0" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="+V" x="5.08" y="7.62" length="short" direction="pwr" rot="R270"/>
<text x="1.016" y="1.778" size="1.778" layer="94">-</text>
<text x="0.762" y="-3.302" size="1.778" layer="94">+</text>
<wire x1="5.08" y1="3.048" x2="12.7" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="-3.048" width="0.1524" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="3.048" width="0.1524" layer="94"/>
<text x="7.62" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="LMV324_2">
<wire x1="12.7" y1="0" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="12.7" y2="0" width="0.254" layer="94"/>
<pin name="-IN" x="-2.54" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="+IN" x="-2.54" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="OUT" x="15.24" y="0" visible="pad" length="short" direction="out" rot="R180"/>
<text x="0.508" y="1.778" size="1.778" layer="94">-</text>
<text x="0.508" y="-3.302" size="1.778" layer="94">+</text>
<text x="7.62" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="7.62" y="5.08" size="1.778" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LMV324" prefix="IC">
<description>Jellybean quad op-amp</description>
<gates>
<gate name="G1" symbol="LMV324" x="-7.62" y="0" swaplevel="1"/>
<gate name="G3" symbol="LMV324_2" x="0" y="-40.64" swaplevel="1"/>
<gate name="G2" symbol="LMV324_2" x="45.72" y="-2.54" swaplevel="1"/>
<gate name="G4" symbol="LMV324_2" x="45.72" y="-40.64" swaplevel="1"/>
</gates>
<devices>
<device name="" package="SO014">
<connects>
<connect gate="G1" pin="+IN" pad="3"/>
<connect gate="G1" pin="+V" pad="4"/>
<connect gate="G1" pin="-IN" pad="2"/>
<connect gate="G1" pin="-V" pad="11"/>
<connect gate="G1" pin="OUT" pad="1"/>
<connect gate="G2" pin="+IN" pad="10"/>
<connect gate="G2" pin="-IN" pad="9"/>
<connect gate="G2" pin="OUT" pad="8"/>
<connect gate="G3" pin="+IN" pad="5"/>
<connect gate="G3" pin="-IN" pad="6"/>
<connect gate="G3" pin="OUT" pad="7"/>
<connect gate="G4" pin="+IN" pad="12"/>
<connect gate="G4" pin="-IN" pad="13"/>
<connect gate="G4" pin="OUT" pad="14"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="IC-08227"/>
<attribute name="VALUE" value="LMV324" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Eagle_BOARD-TO-BOARD_CONNECTORS_rev15d">
<description>&lt;BR&gt;Wurth Elektronik - Board to Board Connectors&lt;br&gt;&lt;Hr&gt;
&lt;BR&gt;&lt;BR&gt; 
&lt;TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0&gt;
&lt;TR&gt;   
&lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;&lt;BR&gt;&lt;br&gt;
      &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;BR&gt;
       &lt;BR&gt;
       &lt;BR&gt;
       &lt;BR&gt;&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
&lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;&lt;br&gt;
      -----&lt;BR&gt;
      -----&lt;BR&gt;
      -----&lt;BR&gt;
      -----&lt;BR&gt;
      -----&lt;BR&gt;&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt; &lt;FONT FACE=ARIAL SIZE=3&gt;&lt;br&gt;
      ---------------------------&lt;BR&gt;
&lt;B&gt;&lt;I&gt;&lt;span style='font-size:26pt;
  color:#FF6600;'&gt;WE &lt;/span&gt;&lt;/i&gt;&lt;/b&gt;
&lt;BR&gt;
      ---------------------------&lt;BR&gt;&lt;b&gt;Würth Elektronik&lt;/b&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;&lt;br&gt;
      ---------O---&lt;BR&gt;
      ----O--------&lt;BR&gt;
      ---------O---&lt;BR&gt;
      ----O--------&lt;BR&gt;
      ---------O---&lt;BR&gt;&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
   
&lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;&lt;BR&gt;
      &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;BR&gt;
       &lt;BR&gt;
       &lt;BR&gt;
       &lt;BR&gt;
       &lt;BR&gt;&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;

  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  
&lt;/TABLE&gt;
&lt;B&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;More than you expect&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;/B&gt;

&lt;HR&gt;&lt;BR&gt;
&lt;b&gt;Würth Elektronik eiSos GmbH &amp; Co. KG&lt;/b&gt;&lt;br&gt;
EMC &amp; Inductive Solutions&lt;br&gt;

Max-Eyth-Str.1&lt;br&gt;
D-74638 Waldenburg&lt;br&gt;
&lt;br&gt;
Tel: +49 (0)7942-945-0&lt;br&gt;
Fax:+49 (0)7942-945-405&lt;br&gt;
&lt;br&gt;
&lt;a href="http://www.we-online.com/eagle"&gt;http://www.we-online.com/eagle&lt;/a&gt;&lt;br&gt;
&lt;a href="mailto:libraries@we-online.com"&gt;libraries@we-online.com&lt;/a&gt; &lt;BR&gt;&lt;BR&gt;
&lt;br&gt;&lt;HR&gt;&lt;BR&gt;
Neither CadSoft nor WE-eiSos does warrant that this library is error-free or &lt;br&gt;
that it meets your specific requirements.&lt;br&gt;&lt;BR&gt;
Please contact us for more information.&lt;br&gt;&lt;BR&gt;&lt;br&gt;
&lt;hr&gt;
Eagle Version 6, Library Revision 2015c, 2015-06-02
&lt;HR&gt;
Copyright: Würth Elektronik</description>
<packages>
<package name="62101421021">
<description>&lt;b&gt;WR-PHD 1.27mm Dual SMT Pin Header H=3.80 mm, 14 Pins&lt;b&gt;</description>
<wire x1="-5.09" y1="-1.7" x2="3.79" y2="-1.7" width="0.127" layer="51"/>
<wire x1="3.79" y1="-1.7" x2="3.79" y2="1.7" width="0.127" layer="21"/>
<wire x1="3.79" y1="1.7" x2="-5.09" y2="1.7" width="0.127" layer="51"/>
<wire x1="-5.09" y1="1.7" x2="-5.09" y2="-1.7" width="0.127" layer="21"/>
<smd name="3" x="-1.905" y="-1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="4" x="-0.635" y="-1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="5" x="0.635" y="-1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="6" x="1.905" y="-1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="9" x="1.905" y="1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="10" x="0.635" y="1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="11" x="-0.635" y="1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="12" x="-1.905" y="1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="7" x="3.175" y="-1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="8" x="3.175" y="1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="2" x="-3.157" y="-1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="13" x="-3.157" y="1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="1" x="-4.445" y="-1.95" dx="0.75" dy="2.1" layer="1"/>
<smd name="14" x="-4.445" y="1.95" dx="0.75" dy="2.1" layer="1"/>
<text x="-5.504" y="5.6821" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.504" y="-7.4602" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="7/7">
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="-1.905" y1="6.985" x2="-1.905" y2="8.255" width="0.254" layer="94" curve="-180"/>
<wire x1="1.905" y1="8.255" x2="1.905" y2="6.985" width="0.254" layer="94" curve="-180"/>
<wire x1="-1.905" y1="-0.635" x2="-1.905" y2="0.635" width="0.254" layer="94" curve="-180"/>
<wire x1="-1.905" y1="-3.175" x2="-1.905" y2="-1.905" width="0.254" layer="94" curve="-180"/>
<wire x1="-1.905" y1="-5.715" x2="-1.905" y2="-4.445" width="0.254" layer="94" curve="-180"/>
<wire x1="-1.905" y1="4.445" x2="-1.905" y2="5.715" width="0.254" layer="94" curve="-180"/>
<wire x1="-1.905" y1="1.905" x2="-1.905" y2="3.175" width="0.254" layer="94" curve="-180"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180"/>
<wire x1="-1.905" y1="-8.255" x2="-1.905" y2="-6.985" width="0.254" layer="94" curve="-180"/>
<wire x1="1.905" y1="-6.985" x2="1.905" y2="-8.255" width="0.254" layer="94" curve="-180"/>
<text x="-2.54" y="12.7" size="1.27" layer="95">&gt;NAME</text>
<text x="-2.54" y="-12.7" size="1.27" layer="95">&gt;VALUE</text>
<pin name="1" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="3" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="4" x="-7.62" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="5" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="6" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="14" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="13" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="12" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="11" x="7.62" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="10" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="9" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="7" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="8" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="62101421021" prefix="K">
<description>&lt;b&gt; WR-PHD 1.27mm Dual SMT Pin Header H=3.80 mm, 14 Pins&lt;/b&gt;=&gt;Code : Con_BTB_PHD_1.27_2_62101421021
&lt;br&gt;&lt;a href="http://katalog.we-online.de/media/thumbs2/eican/thb_Con_BTB_PHD_1.27_2_6210xx21021_pf2.jpg" title="Enlarge picture"&gt;
&lt;img src="http://katalog.we-online.de/media/thumbs2/eican/thb_Con_BTB_PHD_1.27_2_6210xx21021_pf2.jpg"  width="320"&gt;&lt;/a&gt;&lt;p&gt;
Details see: &lt;a href="http://katalog.we-online.de/en/em/621_0xx_210_21"&gt;http://katalog.we-online.de/en/em/621_0xx_210_21&lt;/a&gt;&lt;p&gt;
Created 2014-06-03, Karrer Zheng&lt;br&gt;
2014 (C) Würth Elektronik</description>
<gates>
<gate name="G$1" symbol="7/7" x="0" y="0"/>
</gates>
<devices>
<device name="" package="62101421021">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="BME280ComponentLibrary">
<packages>
<package name="BME280_LGA">
<smd name="P$1" x="1.025" y="0.975" dx="0.5" dy="0.35" layer="1"/>
<smd name="P$2" x="1.025" y="0.325" dx="0.5" dy="0.35" layer="1"/>
<smd name="P$3" x="1.025" y="-0.325" dx="0.5" dy="0.35" layer="1"/>
<smd name="P$4" x="1.025" y="-0.975" dx="0.5" dy="0.35" layer="1"/>
<smd name="P$5" x="-1.025" y="-0.975" dx="0.5" dy="0.35" layer="1"/>
<smd name="P$6" x="-1.025" y="-0.325" dx="0.5" dy="0.35" layer="1"/>
<smd name="P$7" x="-1.025" y="0.325" dx="0.5" dy="0.35" layer="1"/>
<smd name="P$8" x="-1.025" y="0.975" dx="0.5" dy="0.35" layer="1"/>
<wire x1="-1.42875" y1="1.42875" x2="1.42875" y2="1.42875" width="0.254" layer="21"/>
<wire x1="1.42875" y1="1.42875" x2="1.42875" y2="-1.42875" width="0.254" layer="21"/>
<wire x1="1.42875" y1="-1.42875" x2="-1.42875" y2="-1.42875" width="0.254" layer="21"/>
<wire x1="-1.42875" y1="-1.42875" x2="-1.42875" y2="1.42875" width="0.254" layer="21"/>
<circle x="1.74625" y="1.74625" radius="0.15875" width="0.127" layer="21"/>
<text x="-1.905" y="2.54" size="0.8128" layer="25" font="vector">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="0.8128" layer="27" font="vector">&gt;VALUE</text>
<circle x="1.74625" y="1.74625" radius="0.079375" width="0.127" layer="21"/>
<circle x="1.74625" y="1.74625" radius="0.0381" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="BME280">
<wire x1="-12.7" y1="10.16" x2="12.7" y2="10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="10.16" x2="12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="-12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="-12.7" y2="10.16" width="0.254" layer="94"/>
<pin name="GND1" x="15.24" y="7.62" visible="pin" length="short" rot="R180"/>
<pin name="!CS" x="15.24" y="2.54" visible="pin" length="short" rot="R180"/>
<pin name="SDI/SDA" x="15.24" y="-2.54" visible="pin" length="short" rot="R180"/>
<pin name="SCK/SCL" x="15.24" y="-7.62" visible="pin" length="short" rot="R180"/>
<pin name="SDO/ADR" x="-15.24" y="-7.62" visible="pin" length="short"/>
<pin name="VDDIO" x="-15.24" y="-2.54" visible="pin" length="short"/>
<pin name="GND2" x="-15.24" y="2.54" visible="pin" length="short"/>
<pin name="VDD" x="-15.24" y="7.62" visible="pin" length="short"/>
<text x="-10.16" y="12.7" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-15.24" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BME280" prefix="U" uservalue="yes">
<gates>
<gate name="U1" symbol="BME280" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BME280_LGA">
<connects>
<connect gate="U1" pin="!CS" pad="P$2"/>
<connect gate="U1" pin="GND1" pad="P$1"/>
<connect gate="U1" pin="GND2" pad="P$7"/>
<connect gate="U1" pin="SCK/SCL" pad="P$4"/>
<connect gate="U1" pin="SDI/SDA" pad="P$3"/>
<connect gate="U1" pin="SDO/ADR" pad="P$5"/>
<connect gate="U1" pin="VDD" pad="P$8"/>
<connect gate="U1" pin="VDDIO" pad="P$6"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="IC-13090" constant="no"/>
<attribute name="VALUE" value="BME280" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="C13" library="SparkFun-Capacitors" deviceset="CAP" device="0805" value="10uF">
<attribute name="PROD_ID" value="CAP-11330"/>
</part>
<part name="GND22" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND23" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND24" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="U3" library="SparkFun-Sensors" deviceset="MICS-4514" device=""/>
<part name="R13" library="SparkFun-Resistors" deviceset="RESISTOR" device="0603" value="51">
<attribute name="PROD_ID" value="RES-12314"/>
</part>
<part name="Q3" library="SparkFun-DiscreteSemi" deviceset="MOSFET-NCHANNEL" device="BSS138">
<attribute name="P_NAME" value="BSS138"/>
</part>
<part name="R17" library="SparkFun-Resistors" deviceset="100OHM1/10W1%(0603)" device="" value="100"/>
<part name="R18" library="SparkFun-Resistors" deviceset="100KOHM1/10W1%(0603)" device="" value="100k"/>
<part name="GND25" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND26" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R19" library="SparkFun-Resistors" deviceset="RESISTOR" device="0805-RES" value="82">
<attribute name="DK_ID" value="541-82.0CCT-ND"/>
</part>
<part name="R20" library="SparkFun-Resistors" deviceset="22KOHM1/10W1%(0603)" device="" value="22K"/>
<part name="R21" library="SparkFun-Resistors" deviceset="RESISTOR" device="0805-RES" value="82">
<attribute name="DK_ID" value="541-82.0CCT-ND"/>
</part>
<part name="GND27" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R22" library="SparkFun-Resistors" deviceset="47KOHM1/10W1%(0603)" device="" value="47K"/>
<part name="GND28" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="P+3" library="SparkFun" deviceset="3.3V" device="" value="VCC"/>
<part name="P+4" library="SparkFun" deviceset="3.3V" device="" value="VCC"/>
<part name="U5" library="ML8511" deviceset="ML8511-UV-SENSOR" device="SMD" value="ML8511-UV-SENSOR"/>
<part name="GND29" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="C14" library="SparkFun-Capacitors" deviceset="1NF/1000PF-50V-10%(0603)" device="" value="1nF"/>
<part name="GND30" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="U8" library="mike-temp" deviceset="TSL2561" device="FN" value="TSL2561FN"/>
<part name="GND39" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R28" library="SparkFun-Resistors" deviceset="RESISTOR" device="0603" value="10K"/>
<part name="SUPPLY1" library="SparkFun-Aesthetics" deviceset="VCC" device=""/>
<part name="MIC1" library="SparkFun-Sensors" deviceset="MIC" device="9.7MM"/>
<part name="IC1" library="SparkFun-AnalogIC" deviceset="LMV324" device="" value="LMV324"/>
<part name="R27" library="SparkFun-Resistors" deviceset="2.2KOHM1/10W1%(0603)" device="" value="2.2k"/>
<part name="R29" library="SparkFun-Resistors" deviceset="1KOHM1/10W1%(0603)" device="" value="1K"/>
<part name="R30" library="SparkFun-Resistors" deviceset="100KOHM1/10W1%(0603)" device="" value="100k"/>
<part name="R31" library="SparkFun-Resistors" deviceset="10KOHM1/10W1%(0603)" device="0603" value="10K"/>
<part name="R32" library="SparkFun-Resistors" deviceset="10KOHM1/10W1%(0603)" device="0603" value="10K"/>
<part name="R33" library="SparkFun-Resistors" deviceset="10KOHM1/10W1%(0603)" device="0603" value="10K"/>
<part name="GND37" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND40" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND41" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="D1" library="SparkFun-DiscreteSemi" deviceset="RB751" device="" value="RB751"/>
<part name="C22" library="SparkFun-Capacitors" deviceset="10UF-6.3V-20%(1206)" device="" value="10uF"/>
<part name="R34" library="SparkFun-Resistors" deviceset="10KOHM1/10W1%(0603)" device="0603" value="10K"/>
<part name="C23" library="SparkFun-Capacitors" deviceset="10UF-6.3V-20%(1206)" device="" value="10uF"/>
<part name="SUPPLY2" library="SparkFun-Aesthetics" deviceset="VCC" device=""/>
<part name="R35" library="SparkFun-Resistors" deviceset="100OHM1/10W1%(0603)" device="" value="100"/>
<part name="SUPPLY3" library="SparkFun-Aesthetics" deviceset="VCC" device=""/>
<part name="D2" library="SparkFun-DiscreteSemi" deviceset="RB751" device="" value="RB751"/>
<part name="R36" library="SparkFun-Resistors" deviceset="1KOHM1/10W1%(0603)" device="" value="1K"/>
<part name="GND42" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND43" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND44" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="C24" library="SparkFun-Capacitors" deviceset="1.0UF-16V-10%(0603)" device="" value="1.0uF"/>
<part name="R43" library="SparkFun-Resistors" deviceset="22KOHM1/10W1%(0603)" device="" value="22K"/>
<part name="R44" library="SparkFun-Resistors" deviceset="100OHM1/10W1%(0603)" device="" value="100"/>
<part name="U1" library="BME280ComponentLibrary" deviceset="BME280" device="" value="BME280"/>
<part name="GND1" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND2" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND3" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND4" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="C1" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="0.1uF"/>
<part name="C2" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="0.1uF"/>
<part name="R3" library="SparkFun-Resistors" deviceset="4.7KOHM-1/10W-1%(0603)" device="" value="4.7K"/>
<part name="R4" library="SparkFun-Resistors" deviceset="4.7KOHM-1/10W-1%(0603)" device="" value="4.7K"/>
<part name="K3" library="Eagle_BOARD-TO-BOARD_CONNECTORS_rev15d" deviceset="62101421021" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="193.04" y1="99.06" x2="378.46" y2="99.06" width="0.4064" layer="97" style="shortdash"/>
<wire x1="193.04" y1="99.06" x2="193.04" y2="33.02" width="0.4064" layer="97" style="shortdash"/>
<wire x1="193.04" y1="33.02" x2="276.86" y2="33.02" width="0.4064" layer="97" style="shortdash"/>
<wire x1="276.86" y1="33.02" x2="378.46" y2="33.02" width="0.4064" layer="97" style="shortdash"/>
<wire x1="378.46" y1="33.02" x2="378.46" y2="99.06" width="0.4064" layer="97" style="shortdash"/>
<wire x1="378.46" y1="33.02" x2="378.46" y2="-33.02" width="0.4064" layer="97" style="shortdash"/>
<wire x1="378.46" y1="-33.02" x2="276.86" y2="-33.02" width="0.4064" layer="97" style="shortdash"/>
<wire x1="276.86" y1="-33.02" x2="276.86" y2="33.02" width="0.4064" layer="97" style="shortdash"/>
<wire x1="276.86" y1="-33.02" x2="193.04" y2="-33.02" width="0.4064" layer="97" style="shortdash"/>
<wire x1="193.04" y1="-33.02" x2="193.04" y2="33.02" width="0.4064" layer="97" style="shortdash"/>
<text x="200.66" y="86.36" size="3.81" layer="97">NO2 and CO</text>
<text x="284.48" y="22.86" size="3.81" layer="97">UV sensor</text>
<wire x1="193.04" y1="-33.02" x2="127" y2="-33.02" width="0.4064" layer="97" style="shortdash"/>
<text x="137.16" y="17.78" size="3.81" layer="97">Light</text>
<text x="190.5" y="-121.92" size="2.54" layer="97" font="vector">Decoupling</text>
<wire x1="378.46" y1="-33.02" x2="378.46" y2="-132.08" width="0.4064" layer="97" style="shortdash"/>
<wire x1="378.46" y1="-132.08" x2="129.54" y2="-132.08" width="0.4064" layer="97" style="shortdash"/>
<text x="124.46" y="83.82" size="3.81" layer="97">BME280 Breakout</text>
<wire x1="193.04" y1="33.02" x2="127" y2="33.02" width="0.4064" layer="97" style="shortdash"/>
<wire x1="127" y1="33.02" x2="127" y2="-33.02" width="0.4064" layer="97" style="shortdash"/>
<wire x1="127" y1="-33.02" x2="127" y2="-132.08" width="0.4064" layer="97" style="shortdash"/>
<wire x1="127" y1="33.02" x2="78.74" y2="33.02" width="0.4064" layer="97" style="shortdash"/>
<wire x1="78.74" y1="33.02" x2="78.74" y2="99.06" width="0.4064" layer="97" style="shortdash"/>
<wire x1="78.74" y1="99.06" x2="193.04" y2="99.06" width="0.4064" layer="97" style="shortdash"/>
<wire x1="78.74" y1="33.02" x2="78.74" y2="-132.08" width="0.4064" layer="97" style="shortdash"/>
<wire x1="78.74" y1="-132.08" x2="127" y2="-132.08" width="0.4064" layer="97" style="shortdash"/>
<wire x1="127" y1="-132.08" x2="129.54" y2="-132.08" width="0.4064" layer="97" style="shortdash"/>
<text x="142.24" y="-43.18" size="3.81" layer="97">Sound Loudness sensor</text>
<text x="200.66" y="20.32" size="3.81" layer="97">Connector</text>
</plain>
<instances>
<instance part="C13" gate="G$1" x="360.68" y="78.74">
<attribute name="PROD_ID" x="360.68" y="78.74" size="1.778" layer="96" display="off"/>
</instance>
<instance part="GND22" gate="1" x="238.76" y="43.18"/>
<instance part="GND23" gate="1" x="360.68" y="71.12"/>
<instance part="GND24" gate="1" x="279.4" y="43.18"/>
<instance part="U3" gate="G$1" x="330.2" y="78.74"/>
<instance part="R13" gate="G$1" x="264.16" y="58.42" smashed="yes" rot="R90">
<attribute name="PROD_ID" x="264.16" y="58.42" size="1.778" layer="96" rot="R90" display="off"/>
<attribute name="NAME" x="266.7" y="58.3946" size="1.778" layer="95"/>
<attribute name="VALUE" x="266.7" y="55.88" size="1.778" layer="96"/>
</instance>
<instance part="Q3" gate="G$1" x="248.92" y="60.96" smashed="yes">
<attribute name="NAME" x="254" y="63.5" size="1.778" layer="95"/>
<attribute name="P_NAME" x="254" y="60.96" size="1.778" layer="96"/>
</instance>
<instance part="R17" gate="G$1" x="231.14" y="60.96"/>
<instance part="R18" gate="G$1" x="238.76" y="53.34" smashed="yes" rot="R90">
<attribute name="NAME" x="241.3" y="53.34" size="1.778" layer="95"/>
<attribute name="VALUE" x="241.3" y="50.8" size="1.778" layer="96"/>
</instance>
<instance part="GND25" gate="1" x="248.92" y="43.18"/>
<instance part="GND26" gate="1" x="264.16" y="43.18"/>
<instance part="R19" gate="G$1" x="264.16" y="76.2" smashed="yes" rot="R90">
<attribute name="DK_ID" x="264.16" y="76.2" size="1.778" layer="96" rot="R90" display="off"/>
<attribute name="NAME" x="266.7" y="76.1746" size="1.778" layer="95"/>
<attribute name="VALUE" x="266.7" y="73.66" size="1.778" layer="96"/>
</instance>
<instance part="R20" gate="G$1" x="279.4" y="66.04" smashed="yes" rot="R90">
<attribute name="NAME" x="281.94" y="66.0146" size="1.778" layer="95"/>
<attribute name="VALUE" x="281.94" y="63.5" size="1.778" layer="96"/>
</instance>
<instance part="R21" gate="G$1" x="292.1" y="66.04" smashed="yes" rot="R90">
<attribute name="DK_ID" x="292.1" y="66.04" size="1.778" layer="96" rot="R90" display="off"/>
<attribute name="NAME" x="294.64" y="66.0146" size="1.778" layer="95"/>
<attribute name="VALUE" x="294.64" y="63.5" size="1.778" layer="96"/>
</instance>
<instance part="GND27" gate="1" x="292.1" y="43.18"/>
<instance part="R22" gate="G$1" x="304.8" y="66.04" smashed="yes" rot="R90">
<attribute name="NAME" x="307.34" y="66.0146" size="1.778" layer="95"/>
<attribute name="VALUE" x="307.34" y="63.5" size="1.778" layer="96"/>
</instance>
<instance part="GND28" gate="1" x="304.8" y="43.18"/>
<instance part="P+3" gate="G$1" x="350.52" y="88.9"/>
<instance part="P+4" gate="G$1" x="360.68" y="88.9"/>
<instance part="U5" gate="U1" x="327.66" y="-5.08"/>
<instance part="GND29" gate="1" x="314.96" y="-15.24"/>
<instance part="C14" gate="G$1" x="307.34" y="-12.7"/>
<instance part="GND30" gate="1" x="307.34" y="-20.32"/>
<instance part="U8" gate="G$1" x="165.1" y="-10.16"/>
<instance part="GND39" gate="1" x="182.88" y="-22.86"/>
<instance part="R28" gate="G$1" x="142.24" y="5.08" rot="R90"/>
<instance part="SUPPLY1" gate="1" x="162.56" y="-71.12"/>
<instance part="MIC1" gate="G$1" x="157.48" y="-88.9" rot="MR270"/>
<instance part="IC1" gate="G1" x="200.66" y="-91.44"/>
<instance part="IC1" gate="G3" x="261.62" y="-93.98"/>
<instance part="IC1" gate="G4" x="332.74" y="-91.44"/>
<instance part="R27" gate="G$1" x="162.56" y="-78.74" rot="R90"/>
<instance part="R29" gate="G$1" x="182.88" y="-88.9"/>
<instance part="R30" gate="G$1" x="208.28" y="-71.12"/>
<instance part="R31" gate="G$1" x="248.92" y="-91.44"/>
<instance part="R32" gate="G$1" x="190.5" y="-78.74" rot="R90"/>
<instance part="R33" gate="G$1" x="190.5" y="-101.6" rot="R90"/>
<instance part="GND37" gate="1" x="162.56" y="-111.76"/>
<instance part="GND40" gate="1" x="190.5" y="-111.76"/>
<instance part="GND41" gate="1" x="205.74" y="-111.76"/>
<instance part="D1" gate="G$1" x="264.16" y="-78.74"/>
<instance part="C22" gate="G$1" x="307.34" y="-101.6"/>
<instance part="R34" gate="G$1" x="320.04" y="-101.6" rot="R90"/>
<instance part="C23" gate="G$1" x="172.72" y="-88.9" rot="R90"/>
<instance part="SUPPLY2" gate="1" x="190.5" y="-71.12"/>
<instance part="R35" gate="G$1" x="299.72" y="-93.98"/>
<instance part="SUPPLY3" gate="1" x="205.74" y="-81.28"/>
<instance part="D2" gate="G$1" x="284.48" y="-93.98"/>
<instance part="R36" gate="G$1" x="340.36" y="-78.74"/>
<instance part="GND42" gate="1" x="307.34" y="-111.76"/>
<instance part="GND43" gate="1" x="320.04" y="-111.76"/>
<instance part="GND44" gate="1" x="256.54" y="-111.76"/>
<instance part="C24" gate="G$1" x="233.68" y="-91.44" rot="R90"/>
<instance part="R43" gate="G$1" x="269.24" y="-68.58"/>
<instance part="R44" gate="G$1" x="355.6" y="-101.6"/>
<instance part="U1" gate="U1" x="144.78" y="63.5"/>
<instance part="GND1" gate="1" x="124.46" y="38.1"/>
<instance part="GND2" gate="1" x="165.1" y="43.18"/>
<instance part="GND3" gate="1" x="116.84" y="38.1"/>
<instance part="GND4" gate="1" x="109.22" y="38.1"/>
<instance part="C1" gate="G$1" x="109.22" y="45.72"/>
<instance part="C2" gate="G$1" x="116.84" y="45.72"/>
<instance part="R3" gate="G$1" x="175.26" y="73.66" rot="R90"/>
<instance part="R4" gate="G$1" x="99.06" y="66.04" rot="R90"/>
<instance part="K3" gate="G$1" x="233.68" y="7.62"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="C13" gate="G$1" pin="2"/>
<pinref part="GND23" gate="1" pin="GND"/>
<wire x1="360.68" y1="76.2" x2="360.68" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="238.76" y1="48.26" x2="238.76" y2="45.72" width="0.1524" layer="91"/>
<pinref part="GND22" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q3" gate="G$1" pin="S"/>
<wire x1="248.92" y1="55.88" x2="248.92" y2="45.72" width="0.1524" layer="91"/>
<pinref part="GND25" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="264.16" y1="53.34" x2="264.16" y2="45.72" width="0.1524" layer="91"/>
<pinref part="GND26" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R20" gate="G$1" pin="1"/>
<pinref part="GND24" gate="1" pin="GND"/>
<wire x1="279.4" y1="60.96" x2="279.4" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R21" gate="G$1" pin="1"/>
<pinref part="GND27" gate="1" pin="GND"/>
<wire x1="292.1" y1="60.96" x2="292.1" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R22" gate="G$1" pin="1"/>
<pinref part="GND28" gate="1" pin="GND"/>
<wire x1="304.8" y1="60.96" x2="304.8" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U5" gate="U1" pin="GND"/>
<pinref part="GND29" gate="1" pin="GND"/>
<wire x1="317.5" y1="-10.16" x2="314.96" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-10.16" x2="314.96" y2="-12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND30" gate="1" pin="GND"/>
<pinref part="C14" gate="G$1" pin="2"/>
<wire x1="307.34" y1="-15.24" x2="307.34" y2="-17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="GND"/>
<wire x1="180.34" y1="-15.24" x2="182.88" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="182.88" y1="-15.24" x2="182.88" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="GND39" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND37" gate="1" pin="GND"/>
<wire x1="162.56" y1="-109.22" x2="162.56" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="MIC1" gate="G$1" pin="2"/>
<wire x1="160.02" y1="-91.44" x2="162.56" y2="-91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R33" gate="G$1" pin="1"/>
<pinref part="GND40" gate="1" pin="GND"/>
<wire x1="190.5" y1="-106.68" x2="190.5" y2="-109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND41" gate="1" pin="GND"/>
<pinref part="IC1" gate="G1" pin="-V"/>
<wire x1="205.74" y1="-109.22" x2="205.74" y2="-99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C22" gate="G$1" pin="2"/>
<wire x1="307.34" y1="-104.14" x2="307.34" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="GND42" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R34" gate="G$1" pin="1"/>
<wire x1="320.04" y1="-106.68" x2="320.04" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="GND43" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND44" gate="1" pin="GND"/>
<wire x1="256.54" y1="-109.22" x2="256.54" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G3" pin="+IN"/>
<wire x1="256.54" y1="-96.52" x2="259.08" y2="-96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="U1" pin="GND2"/>
<wire x1="129.54" y1="66.04" x2="124.46" y2="66.04" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="124.46" y1="66.04" x2="124.46" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="U1" pin="GND1"/>
<wire x1="160.02" y1="71.12" x2="165.1" y2="71.12" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="165.1" y1="71.12" x2="165.1" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="109.22" y1="40.64" x2="109.22" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="116.84" y1="40.64" x2="116.84" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<junction x="226.06" y="7.62"/>
<label x="226.06" y="7.62" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="K3" gate="G$1" pin="4"/>
</segment>
<segment>
<junction x="226.06" y="5.08"/>
<label x="226.06" y="5.08" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="K3" gate="G$1" pin="5"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="R27" gate="G$1" pin="2"/>
<pinref part="SUPPLY1" gate="1" pin="VCC"/>
<wire x1="162.56" y1="-73.66" x2="162.56" y2="-71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY2" gate="1" pin="VCC"/>
<pinref part="R32" gate="G$1" pin="2"/>
<wire x1="190.5" y1="-71.12" x2="190.5" y2="-73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G1" pin="+V"/>
<pinref part="SUPPLY3" gate="1" pin="VCC"/>
<wire x1="205.74" y1="-83.82" x2="205.74" y2="-81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="K3" gate="G$1" pin="7"/>
<junction x="226.06" y="0"/>
<label x="226.06" y="0" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="3V3" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="RS2_RED"/>
<wire x1="350.52" y1="83.82" x2="350.52" y2="81.28" width="0.1524" layer="91"/>
<wire x1="350.52" y1="81.28" x2="350.52" y2="76.2" width="0.1524" layer="91"/>
<wire x1="350.52" y1="76.2" x2="350.52" y2="73.66" width="0.1524" layer="91"/>
<wire x1="350.52" y1="73.66" x2="347.98" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="RH2_RED"/>
<wire x1="347.98" y1="76.2" x2="350.52" y2="76.2" width="0.1524" layer="91"/>
<junction x="350.52" y="76.2"/>
<pinref part="U3" gate="G$1" pin="RS2_OX"/>
<wire x1="347.98" y1="81.28" x2="350.52" y2="81.28" width="0.1524" layer="91"/>
<junction x="350.52" y="81.28"/>
<pinref part="U3" gate="G$1" pin="RH2_OX"/>
<wire x1="347.98" y1="83.82" x2="350.52" y2="83.82" width="0.1524" layer="91"/>
<junction x="350.52" y="83.82"/>
<pinref part="P+3" gate="G$1" pin="3.3V"/>
<wire x1="350.52" y1="83.82" x2="350.52" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C13" gate="G$1" pin="1"/>
<pinref part="P+4" gate="G$1" pin="3.3V"/>
<wire x1="360.68" y1="83.82" x2="360.68" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R28" gate="G$1" pin="2"/>
<wire x1="142.24" y1="12.7" x2="142.24" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="VDD"/>
<wire x1="180.34" y1="-5.08" x2="182.88" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="182.88" y1="-5.08" x2="182.88" y2="12.7" width="0.1524" layer="91"/>
<wire x1="142.24" y1="12.7" x2="182.88" y2="12.7" width="0.1524" layer="91"/>
<label x="182.88" y="12.7" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="99.06" y1="71.12" x2="99.06" y2="78.74" width="0.1524" layer="91"/>
<label x="99.06" y="78.74" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="U1" pin="VDDIO"/>
<wire x1="129.54" y1="60.96" x2="109.22" y2="60.96" width="0.1524" layer="91"/>
<wire x1="109.22" y1="60.96" x2="109.22" y2="78.74" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="109.22" y1="50.8" x2="109.22" y2="60.96" width="0.1524" layer="91"/>
<junction x="109.22" y="60.96"/>
<label x="109.22" y="78.74" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<wire x1="116.84" y1="78.74" x2="116.84" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U1" gate="U1" pin="VDD"/>
<wire x1="116.84" y1="71.12" x2="129.54" y2="71.12" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="116.84" y1="50.8" x2="116.84" y2="71.12" width="0.1524" layer="91"/>
<junction x="116.84" y="71.12"/>
<label x="116.84" y="78.74" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="175.26" y1="78.74" x2="175.26" y2="81.28" width="0.1524" layer="91"/>
<label x="175.26" y="81.28" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="K3" gate="G$1" pin="8"/>
<junction x="241.3" y="0"/>
<label x="241.3" y="0" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U5" gate="U1" pin="EN"/>
<wire x1="337.82" y1="0" x2="340.36" y2="0" width="0.1524" layer="91"/>
<wire x1="340.36" y1="0" x2="340.36" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U5" gate="U1" pin="VDD"/>
<wire x1="317.5" y1="0" x2="314.96" y2="0" width="0.1524" layer="91"/>
<wire x1="314.96" y1="0" x2="314.96" y2="15.24" width="0.1524" layer="91"/>
<wire x1="314.96" y1="15.24" x2="327.66" y2="15.24" width="0.1524" layer="91"/>
<wire x1="340.36" y1="15.24" x2="327.66" y2="15.24" width="0.1524" layer="91"/>
<wire x1="327.66" y1="15.24" x2="327.66" y2="17.78" width="0.1524" layer="91"/>
<label x="327.66" y="17.78" size="1.778" layer="95" rot="R90" xref="yes"/>
<junction x="327.66" y="15.24"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="SDA"/>
<wire x1="149.86" y1="-7.62" x2="134.62" y2="-7.62" width="0.1524" layer="91"/>
<label x="134.62" y="-7.62" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="U1" pin="SDI/SDA"/>
<label x="185.42" y="60.96" size="1.27" layer="95" xref="yes"/>
<wire x1="160.02" y1="60.96" x2="185.42" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<junction x="241.3" y="2.54"/>
<label x="241.3" y="2.54" size="1.27" layer="95" xref="yes"/>
<pinref part="K3" gate="G$1" pin="9"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="SCL"/>
<wire x1="149.86" y1="-5.08" x2="134.62" y2="-5.08" width="0.1524" layer="91"/>
<label x="134.62" y="-5.08" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="U1" pin="SCK/SCL"/>
<label x="185.42" y="55.88" size="1.27" layer="95" xref="yes"/>
<wire x1="160.02" y1="55.88" x2="185.42" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<junction x="241.3" y="7.62"/>
<label x="241.3" y="7.62" size="1.27" layer="95" xref="yes"/>
<pinref part="K3" gate="G$1" pin="11"/>
</segment>
</net>
<net name="VNOX" class="0">
<segment>
<wire x1="279.4" y1="81.28" x2="279.4" y2="71.12" width="0.1524" layer="91"/>
<wire x1="279.4" y1="81.28" x2="276.86" y2="81.28" width="0.1524" layer="91"/>
<junction x="279.4" y="81.28"/>
<label x="276.86" y="81.28" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="U3" gate="G$1" pin="RS1_OX"/>
<wire x1="312.42" y1="81.28" x2="279.4" y2="81.28" width="0.1524" layer="91"/>
<pinref part="R20" gate="G$1" pin="2"/>
</segment>
<segment>
<junction x="241.3" y="12.7"/>
<label x="241.3" y="12.7" size="1.27" layer="95" xref="yes"/>
<pinref part="K3" gate="G$1" pin="13"/>
</segment>
</net>
<net name="VRED" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="RS1_RED"/>
<pinref part="R22" gate="G$1" pin="2"/>
<wire x1="312.42" y1="73.66" x2="304.8" y2="73.66" width="0.1524" layer="91"/>
<wire x1="304.8" y1="73.66" x2="304.8" y2="71.12" width="0.1524" layer="91"/>
<wire x1="304.8" y1="73.66" x2="302.26" y2="73.66" width="0.1524" layer="91"/>
<junction x="304.8" y="73.66"/>
<label x="302.26" y="73.66" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<junction x="241.3" y="10.16"/>
<label x="241.3" y="10.16" size="1.27" layer="95" xref="yes"/>
<pinref part="K3" gate="G$1" pin="12"/>
</segment>
</net>
<net name="PRE" class="0">
<segment>
<pinref part="R17" gate="G$1" pin="1"/>
<wire x1="226.06" y1="60.96" x2="223.52" y2="60.96" width="0.1524" layer="91"/>
<label x="223.52" y="60.96" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<junction x="226.06" y="12.7"/>
<label x="226.06" y="12.7" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="K3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="2"/>
<pinref part="Q3" gate="G$1" pin="D"/>
<wire x1="264.16" y1="68.58" x2="264.16" y2="63.5" width="0.1524" layer="91"/>
<wire x1="248.92" y1="66.04" x2="248.92" y2="68.58" width="0.1524" layer="91"/>
<wire x1="248.92" y1="68.58" x2="264.16" y2="68.58" width="0.1524" layer="91"/>
<pinref part="R19" gate="G$1" pin="1"/>
<wire x1="264.16" y1="68.58" x2="264.16" y2="71.12" width="0.1524" layer="91"/>
<junction x="264.16" y="68.58"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="R17" gate="G$1" pin="2"/>
<pinref part="Q3" gate="G$1" pin="G"/>
<wire x1="236.22" y1="60.96" x2="238.76" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R18" gate="G$1" pin="2"/>
<wire x1="238.76" y1="60.96" x2="241.3" y2="60.96" width="0.1524" layer="91"/>
<wire x1="238.76" y1="58.42" x2="238.76" y2="60.96" width="0.1524" layer="91"/>
<junction x="238.76" y="60.96"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="RH1_OX"/>
<pinref part="R19" gate="G$1" pin="2"/>
<wire x1="312.42" y1="83.82" x2="264.16" y2="83.82" width="0.1524" layer="91"/>
<wire x1="264.16" y1="83.82" x2="264.16" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="RH1_RED"/>
<wire x1="312.42" y1="76.2" x2="292.1" y2="76.2" width="0.1524" layer="91"/>
<pinref part="R21" gate="G$1" pin="2"/>
<wire x1="292.1" y1="76.2" x2="292.1" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OUT" class="0">
<segment>
<pinref part="U5" gate="U1" pin="OUT"/>
<wire x1="337.82" y1="-10.16" x2="340.36" y2="-10.16" width="0.1524" layer="91"/>
<label x="340.36" y="-10.16" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<junction x="241.3" y="5.08"/>
<label x="241.3" y="5.08" size="1.27" layer="95" xref="yes"/>
<pinref part="K3" gate="G$1" pin="10"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U5" gate="U1" pin="TR"/>
<wire x1="317.5" y1="-5.08" x2="307.34" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-5.08" x2="307.34" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="1"/>
</segment>
</net>
<net name="INT" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="INT"/>
<wire x1="149.86" y1="-15.24" x2="142.24" y2="-15.24" width="0.1524" layer="91"/>
<label x="134.62" y="-15.24" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="R28" gate="G$1" pin="1"/>
<wire x1="142.24" y1="-15.24" x2="134.62" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="142.24" y1="0" x2="142.24" y2="-15.24" width="0.1524" layer="91"/>
<junction x="142.24" y="-15.24"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="R27" gate="G$1" pin="1"/>
<wire x1="162.56" y1="-88.9" x2="162.56" y2="-83.82" width="0.1524" layer="91"/>
<pinref part="C23" gate="G$1" pin="1"/>
<wire x1="167.64" y1="-88.9" x2="162.56" y2="-88.9" width="0.1524" layer="91"/>
<pinref part="MIC1" gate="G$1" pin="1"/>
<wire x1="160.02" y1="-88.9" x2="162.56" y2="-88.9" width="0.1524" layer="91"/>
<junction x="162.56" y="-88.9"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="R32" gate="G$1" pin="1"/>
<pinref part="R33" gate="G$1" pin="2"/>
<wire x1="190.5" y1="-83.82" x2="190.5" y2="-93.98" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G1" pin="+IN"/>
<wire x1="190.5" y1="-93.98" x2="190.5" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-93.98" x2="190.5" y2="-93.98" width="0.1524" layer="91"/>
<junction x="190.5" y="-93.98"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="R30" gate="G$1" pin="1"/>
<wire x1="203.2" y1="-71.12" x2="195.58" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-71.12" x2="195.58" y2="-88.9" width="0.1524" layer="91"/>
<pinref part="R29" gate="G$1" pin="2"/>
<wire x1="195.58" y1="-88.9" x2="187.96" y2="-88.9" width="0.1524" layer="91"/>
<junction x="195.58" y="-88.9"/>
<pinref part="IC1" gate="G1" pin="-IN"/>
<wire x1="198.12" y1="-88.9" x2="195.58" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="C23" gate="G$1" pin="2"/>
<pinref part="R29" gate="G$1" pin="1"/>
<wire x1="175.26" y1="-88.9" x2="177.8" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="R31" gate="G$1" pin="1"/>
<wire x1="236.22" y1="-91.44" x2="243.84" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="C24" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="R31" gate="G$1" pin="2"/>
<pinref part="IC1" gate="G3" pin="-IN"/>
<wire x1="254" y1="-91.44" x2="256.54" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-91.44" x2="259.08" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-91.44" x2="256.54" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-78.74" x2="256.54" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-68.58" x2="264.16" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="256.54" y1="-78.74" x2="261.62" y2="-78.74" width="0.1524" layer="91"/>
<junction x="256.54" y="-78.74"/>
<junction x="256.54" y="-91.44"/>
<pinref part="R43" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="IC1" gate="G3" pin="OUT"/>
<pinref part="D2" gate="G$1" pin="A"/>
<wire x1="276.86" y1="-93.98" x2="281.94" y2="-93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="D2" gate="G$1" pin="C"/>
<pinref part="R35" gate="G$1" pin="1"/>
<wire x1="292.1" y1="-93.98" x2="294.64" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="287.02" y1="-93.98" x2="292.1" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-93.98" x2="292.1" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-78.74" x2="292.1" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-68.58" x2="274.32" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="266.7" y1="-78.74" x2="292.1" y2="-78.74" width="0.1524" layer="91"/>
<junction x="292.1" y="-78.74"/>
<junction x="292.1" y="-93.98"/>
<pinref part="R43" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="R35" gate="G$1" pin="2"/>
<pinref part="IC1" gate="G4" pin="+IN"/>
<wire x1="304.8" y1="-93.98" x2="307.34" y2="-93.98" width="0.1524" layer="91"/>
<pinref part="R34" gate="G$1" pin="2"/>
<wire x1="307.34" y1="-93.98" x2="320.04" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-93.98" x2="330.2" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-96.52" x2="320.04" y2="-93.98" width="0.1524" layer="91"/>
<pinref part="C22" gate="G$1" pin="1"/>
<wire x1="307.34" y1="-96.52" x2="307.34" y2="-93.98" width="0.1524" layer="91"/>
<junction x="307.34" y="-93.98"/>
<junction x="320.04" y="-93.98"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="IC1" gate="G4" pin="-IN"/>
<wire x1="330.2" y1="-88.9" x2="327.66" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-88.9" x2="327.66" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="R36" gate="G$1" pin="1"/>
<wire x1="327.66" y1="-78.74" x2="335.28" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="AMPENV" class="0">
<segment>
<pinref part="R36" gate="G$1" pin="2"/>
<wire x1="345.44" y1="-78.74" x2="355.6" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-78.74" x2="355.6" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-91.44" x2="358.14" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G4" pin="OUT"/>
<wire x1="355.6" y1="-91.44" x2="350.52" y2="-91.44" width="0.1524" layer="91"/>
<label x="358.14" y="-91.44" size="1.27" layer="95" xref="yes"/>
<junction x="355.6" y="-91.44"/>
<pinref part="R44" gate="G$1" pin="1"/>
<wire x1="350.52" y1="-91.44" x2="347.98" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-101.6" x2="350.52" y2="-91.44" width="0.1524" layer="91"/>
<junction x="350.52" y="-91.44"/>
</segment>
</net>
<net name="ENVELOPE" class="0">
<segment>
<pinref part="R44" gate="G$1" pin="2"/>
<wire x1="360.68" y1="-101.6" x2="363.22" y2="-101.6" width="0.1524" layer="91"/>
<label x="363.22" y="-101.6" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<junction x="241.3" y="15.24"/>
<label x="241.3" y="15.24" size="1.27" layer="95" xref="yes"/>
<pinref part="K3" gate="G$1" pin="14"/>
</segment>
</net>
<net name="N$" class="0">
<segment>
<pinref part="IC1" gate="G1" pin="OUT"/>
<wire x1="220.98" y1="-91.44" x2="220.98" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="R30" gate="G$1" pin="2"/>
<wire x1="220.98" y1="-71.12" x2="213.36" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="215.9" y1="-91.44" x2="220.98" y2="-91.44" width="0.1524" layer="91"/>
<junction x="220.98" y="-91.44"/>
<wire x1="220.98" y1="-91.44" x2="228.6" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="C24" gate="G$1" pin="1"/>
</segment>
</net>
<net name="!CS" class="0">
<segment>
<pinref part="U1" gate="U1" pin="!CS"/>
<wire x1="160.02" y1="66.04" x2="175.26" y2="66.04" width="0.1524" layer="91"/>
<label x="185.42" y="66.04" size="1.27" layer="95" xref="yes"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="175.26" y1="66.04" x2="185.42" y2="66.04" width="0.1524" layer="91"/>
<wire x1="175.26" y1="68.58" x2="175.26" y2="66.04" width="0.1524" layer="91"/>
<junction x="175.26" y="66.04"/>
</segment>
</net>
<net name="SDO/ADR" class="0">
<segment>
<pinref part="U1" gate="U1" pin="SDO/ADR"/>
<wire x1="129.54" y1="55.88" x2="99.06" y2="55.88" width="0.1524" layer="91"/>
<label x="93.98" y="55.88" size="1.27" layer="95" rot="R180" xref="yes"/>
<wire x1="99.06" y1="55.88" x2="93.98" y2="55.88" width="0.1524" layer="91"/>
<wire x1="99.06" y1="60.96" x2="99.06" y2="55.88" width="0.1524" layer="91"/>
<junction x="99.06" y="55.88"/>
<pinref part="R4" gate="G$1" pin="1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
