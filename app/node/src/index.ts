import { app } from "./app";
import cluster from "cluster";
import os from "os";

const port = 8000;
const numCPUs = os.cpus().length;
if(cluster.isPrimary) {
	for(let i = 0; i < numCPUs; i++){
		cluster.fork();
		cluster.on('exit', (worker, code, signal) => {
			cluster.fork();
		});
	}
}else{
app.listen(port, () => {
  console.log(`ポート${port}番で起動しました。`);
});
}
