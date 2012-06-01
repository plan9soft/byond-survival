/*
*/

world
	area = /area/outside	// make outside the default area

	New()									// When the world begins
		..()								// do the regular things
		for(var/area/outside/O in world)	// Look for outside areas
			spawn() O.daycycle()			// begin the daycycle


area
	outside	// lay this area on the map anywhere you want it to change from night to day
		layer = 6	// set this layer above everything else so the overlay obscures everything
		var
			lit = 1	// determines if the area is lit or dark.
			obj/weather/Weather	// what type of weather the area is having


		proc
			daycycle()
				lit = 1 - lit	// toggle lit between 1 and 0
				if(lit)
					sleep(120)	// pause a moment
					luminosity = 1 - luminosity
					sleep(120)	// pause a moment
					overlays -= 'black50.dmi'	// remove the 50% dither
					overlays += 'black25.dmi'	// add a 25% dither for a fading effect
					sleep(120)	// pause a moment
					overlays -= 'black25.dmi'	// remove the dither
				else
					sleep(120)	// pause a moment
					overlays += 'black25.dmi'	// add a 25% dither for a fading effect
					sleep(120)	// pause a moment
					overlays -= 'black25.dmi'	// remove the dither
					overlays += 'black50.dmi'	// add the 50% dither
					sleep(120)	// pause a moment
					luminosity = 1 - luminosity
				spawn(20) daycycle()	// change the 20 to make longer days and nights
/*
*/

			SetWeather(WeatherType)
				if(Weather)	// see if this area already has a weather effect
					if(istype(Weather,WeatherType)) return	// no need to reset it
					overlays -= Weather	// remove the weather display
					del(Weather)	// destroy the weather object
				if(WeatherType)	// if WeatherType is null, it just removes the old settings
					Weather = new WeatherType()	// make a new obj/weather of the right type
					overlays += Weather	// display it as an overlay for the area



	inside	// a sample area not affected by the daycycle or weather
		luminosity = 1


mob/verb

	rain()
		var/area/outside/O
		for(O in world)		// look for an outside area
			break
		if(!O) return	// if there are no outside areas, stop
		O.SetWeather(/obj/weather/rain)

	snow()
		var/area/outside/O
		for(O in world)		// look for an outside area
			break
		if(!O) return	// if there are no outside areas, stop
		O.SetWeather(/obj/weather/snow)

	clear_weather()
		var/area/outside/O
		for(O in world)		// look for an outside area
			break
		if(!O) return	// if there are no outside areas, stop
		O.SetWeather()

obj/weather
	layer = 7	// weather appears over the darkness because I think it looks better that way

	rain
		icon = 'rain.dmi'

	snow
		icon = 'snow.dmi'