<script lang="ts">
  let slideDetails = 
  [
    {
      id: 0,
      title: "Slide 1",
      img_src: "./nature_placeholder.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    },
    {
      id: 1,
      title: "Slide 2",
      img_src: "./machine_placeholder.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    },
    {
      id: 2,
      title: "Slide 3",
      img_src: "./nature_placeholder.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    }, 
  ]

  let arr = [0,1,2,3,4,5,6,7,8,9, 10, 11]
  
  let currSlide = 0
  
  // let handleClick = function(chosenSlide: number):void
  // {
  //   console.log(`from ${currSlide} to ${chosenSlide}`)
  //   currSlide = chosenSlide
  // }
  
  // let handleNext = function():void
  // {
  //   clearInterval(timer)
  //   currSlide = (currSlide + 1) % slideDetails.length
  //   timer = setInterval(handleNext, 9000)
  // }

  // let timer = setInterval(handleNext, 9000)
  
  // let handlePrev = function():void
  // {
  //   console.log(`from ${currSlide}`)

  //   clearInterval(timer)
  //   if(currSlide == 0)
  //   {
  //     currSlide = slideDetails.length - 1
  //   }
  //   else
  //   {
  //     currSlide -= 1
  //   }
  //   timer = setInterval(handleNext, 9000)
  // }

  
</script>
<div class="w-screen h-screen flex justify-center items-center">
  <!-- Carousel items -->
  <!-- remove margin later -->
  <div class="w-1/2 flex justify-center items-center gap-2 overflow-x-scroll h-20 m-6">
{#each arr as n}
    <div class="flex justify-center items-center h-full bg-emerald-500">
      <img
        src="./logo.png"
        class="object-contain"
        alt="some placeholder" />
      <!-- <h1 class="text-xl">{slide.description}</h1> -->
    </div>
{/each}
  </div>
</div>

<style>
  .slide-move-in
  {
    opacity: 0;
    animation: fade-in 1s ease-in-out forwards;

    /* on mousedown */
    /* &:active:hover
    {
      animation-play-state: paused;
    } */
  }

  @keyframes fade-in
  {
    100%
    {
      opacity: 1;
    }
  }

  .slide-move-out
  {
    opacity: 100;
    animation: fade-out 1s ease-in-out forwards;

    /* on mousedown */
    /* &:active:hover
    {
      animation-play-state: paused;
    } */
  }

  @keyframes fade-out
  {
    100%
    {
      opacity: 0;
    }
  }
</style>
