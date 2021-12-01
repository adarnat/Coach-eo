
export const initToggle = () => {
  const btnCollectif = document.getElementById("sport_class_group_size_collectif");
  const btnIndividuel = document.getElementById("sport_class_group_size_individuel");
  const nbParticipantsInput = document.getElementById("sport_class_group_size");

  btnIndividuel.checked = true

  btnCollectif.addEventListener('click', () => {
    if (btnCollectif.checked) {
      nbParticipantsInput.classList.remove('hidden')
      nbParticipantsInput.type = "number"
    }
  });

  btnIndividuel.addEventListener('click', () => {
    if (btnIndividuel.checked) {
      nbParticipantsInput.classList.add('hidden')
      nbParticipantsInput.type = "hidden"
      nbParticipantsInput.value = 1
    }
  });

};
