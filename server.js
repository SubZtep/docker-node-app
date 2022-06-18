import express from "express"

const app = express()
app.get("/", (req, res) => {
  res.send("Hello, world!")
})

const { PORT, HOST } = process.env
app.listen(PORT, HOST)
console.log(`Running on http://${HOST}:${PORT}`)
