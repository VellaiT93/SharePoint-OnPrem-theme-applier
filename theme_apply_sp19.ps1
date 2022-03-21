Add-PSSnapin Microsoft.SharePoint.Powershell -ErrorAction SilentlyContinue
 
#Variables for processing
$WebURL = "http://sp2019server/sites/it"

#Get the Web
$web = Get-SPWeb -Identity $WebURL

$folder = $web.GetFolder("_catalogs/theme/15")

$ColorPaletteURL = "/sites/home/_catalogs/theme/15/Palette_pkpost.spcolor"
$FontSchemeURL = "/sites/home/_catalogs/theme/15/fontscheme005.spfont"
$BackgroundImgURL= "/sites/home/_layouts/15/images/image_bg003.jpg"

#Apply theme
$web.ApplyTheme($ColorPaletteURL, $FontSchemeURL, "", $true)

$web.Update()
$web.dispose()

Write-Host "Script terminated succesfully"
