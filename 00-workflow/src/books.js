const fs = require('fs')

const author = 'dickens'
const title = 'great expectation'
const filename = `${title}-${author}`

const query = encodeURI(`${author} ${title}`)

const endpoint = `https://gutendex.com/books/?search=${query}`

console.info(endpoint)

fetch(endpoint)
	.then(result => result.json())
	.then(result => result.results
			.map(r => r.formats)
			.map(r => {
				for (let s in r)
					if (s.startsWith('text/plain'))
						return r[s]
				return []
			})
	)
	.then(result => result.flat(1)[0])
	.then(result => fetch(result).then(result => result.text()))
	.then(result => fs.promises.writeFile(filename, result))
	.then(_ => console.info(`Completed: ${new Date()}`)) 
	.catch(error => console.error('error ', error))
