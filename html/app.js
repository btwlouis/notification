window.addEventListener("message", (event) => {
  var item = event.data;
  if (item !== undefined && item.type === "custom") {
    const content = $(
      `
      <div class="notification" style="border-left: 5px ` + item.color + ` solid;">
        <div class="notification-title">
          <p style="color: ` + item.color + `">` + item.title + `</p>
        </div>
        <p id="message">
          ` + item.message + `
        </p>
      </div>
      `
    )

    $("#notifications").prepend(content);

    setTimeout(() => {
      content.remove();
    }, 5000)
  }
});
