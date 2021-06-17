import * as Ladda from 'ladda';

const initButtons = () => {
  const bookingButton = document.querySelector('.accommodation-offer-card-content-button');

  const loadButton = (ladda, button) => {
    ladda.stop();
    button.classList.add('success');
    button.classList.add('disabled');
    button.blur();

    const disabledButtons = document.querySelectorAll('.success.disabled');

    if (disabledButtons.length == 2) {
      window.location = bookingButton.dataset.showLink;
    }
  }

  if (bookingButton) {
    const flightBtn = document.getElementById('btn-flight');
    const hotelBtn = document.getElementById('btn-hotel');


    const laddaFlight = Ladda.create(flightBtn);
    const laddaHotel = Ladda.create(hotelBtn);

    const authToken = document.querySelector('meta[name="csrf-token"]').content;


    flightBtn.addEventListener('click', () => {
      laddaFlight.start();

      fetch(flightBtn.href, {
        method: 'PATCH',
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': authToken
        },
        body: JSON.stringify({ booking: { status_flight: true }})
      });

      setTimeout(() => loadButton(laddaFlight, flightBtn), 1000);
    });

    hotelBtn.addEventListener('click', () => {
      laddaHotel.start();

      fetch(flightBtn.href, {
        method: 'PATCH',
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': authToken
        },
        body: JSON.stringify({ booking: { status_accommodation: true }})
      });

      setTimeout(() => loadButton(laddaHotel, hotelBtn), 1000);
    });
  }
}

export { initButtons };
