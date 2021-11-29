import { initSweetalert } from 'init_sweetalert';

const launchAlert = () => {

  // the logic of wich one you cliked on belongs here

  initSweetalert('.sweet-alert-demo', {
    title: "A nice alert",
    text: `This is a great, isn't it?`,
    icon: "success"
  }, (value) => {
    if (value) {
      // const link = document.querySelector('.update-link');
      console.log(this)
      // link.click();
    }
  });


}


export { launchAlert }
