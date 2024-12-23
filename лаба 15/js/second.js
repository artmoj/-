document
  .getElementById("studentForm")
  .addEventListener("submit", function (event) {
    event.preventDefault();
    const form = event.target;
    const formData = new FormData(form);
    const outputFooter = document.getElementById("outputFooter");
    outputFooter.innerHTML = "";
    const fields = [
      { name: "lastname", label: "Фамилия" },
      { name: "name", label: "Имя" },
      { name: "middlename", label: "Отчество" },
      { name: "email", label: "Адрес почты" },
      { name: "phone", label: "Контактный телефон" },
      { name: "social", label: "Социальные сети" },
      { name: "faculty", label: "Факультет" },
      { name: "group", label: "Группа" },
      { name: "course", label: "Курс" },
    ];
    const ul = document.createElement("ul");
    fields.forEach((field) => {
      const value = formData.get(field.name);
      if (value) {
        const li = document.createElement("li");
        if (field.name === "social") {
          const socialNetworks = formData.getAll("social");
          if (socialNetworks.length > 0) {
            li.textContent = `${field.label}: ${socialNetworks.join(", ")}`;
          }
        } else {
          li.textContent = `${field.label}: ${value}`;
        }
        ul.appendChild(li);
      }
    });
    outputFooter.appendChild(ul);
  });
