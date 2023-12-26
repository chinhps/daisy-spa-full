export const dateCalendar = () => {
  const timeArray: Array<{
    label: string;
    value: string;
    isOpen: boolean;
  }> = [];

  let currentHour = 9;
  let currentMinute = 30;
  const currentHourNow = new Date().getHours();
  const currentMinuteNow = new Date().getMinutes();
  let isOpen = false;

  while (currentHour < 20 || (currentHour === 19 && currentMinute === 30)) {
    if (currentHour !== 12 || currentMinute !== 30) {
      const timeLabel = `${currentHour.toString().padStart(2, "0")}:${
        currentMinute === 0 ? "00" : "30"
      }`;
      const isOpenTime = isOpen || currentHour >= currentHourNow;

      timeArray.push({
        label: timeLabel,
        value: timeLabel,
        isOpen: !isOpenTime,
      });
    }

    // Tăng giờ và phút
    if (currentMinute === 30) {
      currentHour += 1;
      currentMinute = 0;
    } else {
      currentMinute = 30;
    }
  }
  return timeArray;
};
