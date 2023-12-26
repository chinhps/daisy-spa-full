export interface IBaseResponseDetail<T> {
  data: T;
  status?: number;
}

export interface IBaseResponse<T> {
  data: Array<T>;
  paginate?: IPaginate;
}

export interface IPaginate {
  current_page: number;
  last_page: number;
  total: number;
}
