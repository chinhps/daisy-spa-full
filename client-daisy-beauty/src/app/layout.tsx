import type { Metadata } from "next";
import { Inter } from "next/font/google";
import Navbar from "@/components/Layout/Navbar/Navbar";
import "./globals.scss";
import { Toaster } from "sonner";
import TanstackProvider from "@/components/Providers/TanstackProvider";
import Script from "next/script";

const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "DAISY BEAUTY | CHĂM SÓC DA VÀ LÀM ĐẸP CHUẨN Y KHOA | SPA TÂN PHÚ ",
  keywords:
    "daisyspa.vn, spa tân phú,daisy spa,daisy beauty, làm đẹp tân phú, booking spa",
  description:
    "Daisy Spa chuyên cung cấp dịch vụ spa chăm sóc da, làm đẹp tại Tân Phú. Hãy đặt lịch ngay để trải nghiệm không gian thư giãn và nhận những liệu pháp chất lượng cao.",
};
export const viewport = {
  width: "device-width",
  initialScale: 1,
  maximumScale: 1,
  userScalable: 0,
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body className={`${inter.className} flex flex-col`}>
        <Navbar />
        <TanstackProvider>{children}</TanstackProvider>
        <Toaster position="top-center" richColors duration={1500} />
        <div className="relative z-0">
          <div className="fixed daisy-background daisy-background-a top-0 right-0"></div>
          <div className="fixed daisy-background daisy-background-b bottom-0 left-0"></div>
        </div>
        <Script src="https://www.googletagmanager.com/gtag/js?id=AW-11462352817" />
        <Script id="google-analytics">
          {`
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'G-X1R321DMMB');
            gtag('config', 'AW-11462352817');
          `}
        </Script>
      </body>
    </html>
  );
}
