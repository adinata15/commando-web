<script lang="ts">
  let slideDetails = 
  [
    {
      id: 0,
      title: "Slide 1",
      img_src: "./denryo_placeholder.jpg",
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
  
  let currSlide = 0
  
  let handleClick = function(chosenSlide: number):void
  {
    console.log(`from ${currSlide} to ${chosenSlide}`)
    currSlide = chosenSlide
  }
  
  let handleNext = function():void
  {
    clearInterval(timer)
    currSlide = (currSlide + 1) % slideDetails.length
    timer = setInterval(handleNext, 9000)
  }

  let timer = setInterval(handleNext, 9000)
  
  let handlePrev = function():void
  {
    console.log(`from ${currSlide}`)

    clearInterval(timer)
    if(currSlide == 0)
    {
      currSlide = slideDetails.length - 1
    }
    else
    {
      currSlide -= 1
    }
    timer = setInterval(handleNext, 9000)
  }

  
</script>

<div id="carouselDarkVariant" class="relative w-screen h-full overflow-hidden">

  <!-- Carousel indicators -->
  <div class="absolute inset-x-0 bottom-0 z-[2] px-[15%] pb-4 flex list-none justify-center gap-1">
{#each slideDetails as slide}
<!-- hover:transition ease-in-out duration-300 motion-reduce:transition-none -->
    <button
      class="box-content h-1 w-10 flex-initial cursor-pointer border-0 border-solid border-transparent bg-black bg-clip-padding opacity-50 transition-colors hover:bg-white {slide.id == currSlide ? 'bg-gray-500':''}"
      aria-current={slide.id===0?"true":"false"}
      aria-label="Slide {slide.id}"
      on:click|preventDefault={() => handleClick(slide.id)}
    />
{/each}
  </div>

  <!-- Carousel items -->
   <!-- after:clear-both after:block after:content-[''] overflow-y-hidden -->
  <div class="w-screen h-full grid">
{#each slideDetails as slide}
    <div class="relative overflow-hidden flex justify-center items-center col-start-1 col-end-1 row-start-1 row-end-1 shrink-0 {slide.id == currSlide ? 'slide-move-in':'slide-move-out'}">
      <img
        src={slide.img_src}
        class="block w-screen h-full object-cover"
        alt="some placeholder" />
      <!-- <div class="absolute block inset-x-[15%] bottom-5 py-5 text-center text-black md:block">
        <h5 class="text-xl">{slide.title}</h5>
        <p>
          {slide.description}
        </p>
      </div> -->
    </div>
{/each}
  </div>

  <!-- Carousel controls - prev item-->
  <button class="absolute inset-y-0 left-0 z-[1] flex w-[15%] items-center justify-center border-0 bg-none p-0 text-center text-white opacity-50 transition-opacity duration-150 ease-[cubic-bezier(0.25,0.1,0.25,1.0)] hover:text-white hover:no-underline hover:opacity-90 hover:outline-none focus:text-black focus:no-underline focus:opacity-90 focus:outline-none motion-reduce:transition-none" 
    type="button"
    on:click={() => handlePrev()}
    >
    <span class="inline-block h-8 w-8 dark:grayscale">
      <svg
        xmlns="http://www.w3.org/2000/svg"
        fill="none"
        viewBox="0 0 24 24"
        stroke-width="1.5"
        stroke="currentColor"
        class="h-6 w-6">
        <path
          stroke-linecap="round"
          stroke-linejoin="round"
          d="M15.75 19.5L8.25 12l7.5-7.5" />
      </svg>
    </span>
    <span
      class="!absolute !-m-px !h-px !w-px !overflow-hidden !whitespace-nowrap !border-0 !p-0 ![clip:rect(0,0,0,0)]"
      >Previous</span
    >
  </button>
  <!-- Carousel controls - next item-->
  <button class="absolute right-0 inset-y-0 z-[1] flex w-[15%] items-center justify-center border-0 bg-none p-0 text-center text-white opacity-50 transition-opacity duration-150 ease-[cubic-bezier(0.25,0.1,0.25,1.0)] hover:text-white hover:no-underline hover:opacity-90 hover:outline-none focus:text-black focus:no-underline focus:opacity-90 focus:outline-none motion-reduce:transition-none"
    type="button"
    on:click={() => handleNext()}
    >
    <span class="inline-block h-8 w-8 dark:grayscale">
      <svg
        xmlns="http://www.w3.org/2000/svg"
        fill="none"
        viewBox="0 0 24 24"
        stroke-width="1.5"
        stroke="currentColor"
        class="h-6 w-6">
        <path
          stroke-linecap="round"
          stroke-linejoin="round"
          d="M8.25 4.5l7.5 7.5-7.5 7.5" />
      </svg>
    </span>
    <span
      class="!absolute !-m-px !h-px !w-px !overflow-hidden !whitespace-nowrap !border-0 !p-0 ![clip:rect(0,0,0,0)]"
      >Next</span
    >
  </button>
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
