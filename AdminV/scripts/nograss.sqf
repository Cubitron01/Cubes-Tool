if (isnil "whipdatgrass") then { whipdatgrass = 1;};
if (whipdatgrass == 1) then
{
whipdatgrass = 0;
setTerrainGrid 50;
}
else
{
whipdatgrass = 1;
setTerrainGrid 12.5;
};
};