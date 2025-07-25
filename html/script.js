window.addEventListener('message', function(event) {
    const data = event.data;
    if (data.type === "notify") {
        const notification = document.getElementById("notification");
        notification.textContent = data.text;
        notification.classList.add("show");

        setTimeout(() => {
            notification.classList.remove("show");
        }, 4000);
    }
});