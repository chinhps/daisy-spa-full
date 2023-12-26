import { ResponseInfor } from "@/types/response/infor.type";

export function formatDate(inputDateString: string) {
  const date = new Date(inputDateString);

  const year = date.getFullYear();
  const month = (date.getMonth() + 1).toString().padStart(2, "0");
  const day = date.getDate().toString().padStart(2, "0");
  const formattedDate = `${day}-${month}-${year}`;
  return formattedDate;
}

export function getInforByKey(key: string, array: Array<ResponseInfor>) {
  return array.find((value) => value.key_infor === key);
}

interface QueryParamsObject {
  [key: string]: string | number | boolean;
}

export function objectToQueryParams(obj: QueryParamsObject): string {
  const queryParams = [];
  for (const key in obj) {
    if (obj.hasOwnProperty(key)) {
      const value = obj[key];
      if (value !== undefined && value !== null) {
        const encodedValue = encodeURIComponent(value.toString());
        queryParams.push(`${encodeURIComponent(key)}=${encodedValue}`);
      }
    }
  }
  return queryParams.join("&");
}
