export interface ResponseBookingInfor {
  date_booking: string;
}

export interface ResponseBooking {
  msg: string;
  key: string;
}

export interface CategoryResponse {
  id: number;
  name: string;
  image: string;
  slug: string;
}

export interface ServiceResponse {
  id: number;
  name: string;
  description: string;
  slug: string;
  image: string;
  category: {
    id: number;
    name: string;
  } | null;
}

export interface BlogResponse {
  id: number;
  title: string;
  content: string;
  slug: string;
  created_at: string;
}
