const express = require('express')
const morgan = require('morgan')

const PORT = process.env.PORT || 3000

const app = express()

app.use(morgan('common'))

app.use('(/*)?', 
	express.json(),
	express.urlencoded({ extended: true }),
	(req, resp) => {
		console.info(`Method: ${req.method}, Resource: ${req.originalUrl}`)
		if (req.method.toLowerCase() == "post")
			console.info(`Content-Type: ${req.header('Content-Type')}, Body: ${JSON.stringify(req.body)}`)

		const message = `OK ${(new Date()).toString()}`
		const accept = req.header('Accept') || 'application/json'

		resp.type(accept).status(200)

		switch (accept) {
			case 'text/plain': 
				resp.send(message)
				break

			case 'application/json': 
				resp.json({ message })
				break

			case 'text/html': 
				default:
				resp.send(`<h1>${message}</h1>`)
		}
	}
)

app.listen(PORT, () => {
	console.info(`Application start on port ${PORT} at ${new Date()}`)
})
