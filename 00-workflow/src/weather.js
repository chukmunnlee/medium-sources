const fs = require('fs')

const data = JSON.parse('{"coord":{"lon":103.8501,"lat":1.2897},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"base":"stations","main":{"temp":304.5,"feels_like":310.46,"temp_min":303.17,"temp_max":305.99,"pressure":1009,"humidity":66},"visibility":10000,"wind":{"speed":5.66,"deg":160},"clouds":{"all":75},"dt":1688714633,"sys":{"type":1,"id":9470,"country":"SG","sunrise":1688684607,"sunset":1688728498},"timezone":28800,"id":1880252,"name":"Singapore","cod":200}')

const weather = {
	temperature: data.main.temp,
	description: data.weather.map(w => `${w.main} - ${w.description}`)
}

fs.promises.writeFile('tmp.weather', JSON.stringify(weather), { flag: 'wx' })
	.then(() => process.exit(0))
	.catch(error => {
		console.error('ERROR: ', error)
		process.exit(2)
	})


