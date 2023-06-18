import { RowDataPacket } from "mysql2";
import pool from "../../util/mysql";
import { File } from "../../model/types";

// キャッシュの準備
const fileCache: { [key: string]: File } = {};

export const getFileByFileId = async (
  fileId: string
): Promise<File | undefined> => {

  // キャッシュに存在する場合はそれを返す
  if (fileCache[fileId]) {
    return fileCache[fileId];
  }

  const [file] = await pool.query<RowDataPacket[]>(
    "SELECT file_name, path FROM file WHERE file_id = ?",
    [fileId]
  );
  
  if (file.length === 0) {
    return;
  }

  const result = {
    fileName: file[0].file_name,
    path: file[0].path,
  };

  // キャッシュに保存
  fileCache[fileId] = result;

  return result;
};
