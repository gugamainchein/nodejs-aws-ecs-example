import express from "express";

const app = express();

const PORT = 8080;
const HOST = "0.0.0.0";

app.get("/", (req: express.Request, res: express.Response) => {
  res.send("Hello World from Darede!");
});

app.listen(PORT, HOST, () => {
  console.log("App running on port " + PORT);
});
