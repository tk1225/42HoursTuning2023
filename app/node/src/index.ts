// import { app } from "./app";
import express from "express";
import cluster from "cluster";
import os from "os";

const port = 8000;
const numCPUs = os.cpus().length;
if (cluster.isPrimary){
	console.log("Master");

	for(let i = 0; i < numCPUs; i++){
		cluster.fork();
	}
	cluster.on('exit', (worker, code, signal) => {
		cluster.fork();
	})
}else {
	import("./app").then((modData) => {
		modData.app.listen(port, () => {
			console.log(`ポート${port}番で起動しました。`);
		})
}).catch((error) => {
		console.log(error);
	});
}
