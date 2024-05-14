<script lang="ts">
  let navlinks = [

    {
      id:0,
      name:"TENTANG KAMI",
      link:"/about",
    },
    {
      id:1,
      name:"PRODUK",
      link:"/about",
    }, 
    {
      id:2,
      name:"sertifikasi",
      link:"/certification",
    }, 
  
    {
      id:3,
      name:"hubungi kami",
      link:"/contact-us",
    }, 
  
    {
      id:4,
      name:"katalog",
      link:"/shop",
    }, 
  ]

</script>

<nav
  class="flex flex-row items-start justify-start w-full h-16"
>
  <!-- top nav -->
  <div
    class="flex flex-row items-center justify-between gap-2 w-full bg-teal-500 h-1/2"
  >
    <!-- logo image -->
    <div
      class="w-1/4 h-full flex items-center justify-start"
    >
      <img
        class="object-contain h-full w-full"
        loading="lazy"
        alt="Daryo"
        src="./logo.png"
      />
    </div>

    <!-- Nav links -->
    <div
      class="w-3/4 flex items-center justify-center"
    >
    <!-- kata kata -->
      <div
        class="flex items-center justify-between max-w-full gap-3"
      >
        <a href="/"
          class="relative tracking-[0.03em] uppercase font-semibold text-red inline-block cursor-pointer no-underline"
        >
        DENRYO®
        </a>

      {#each navlinks as link}
        <div class="w-0.5 h-3 bg-gray opacity-50 rounded-r-sm" />

        <a href={link.link}
          class="relative uppercase font-semibold text-black cursor-pointer no-underline"
        >
          {link.name}
        </a>
      {/each}

      </div>

      <!-- search -->
      <div
        class=" flex flex-row items-center justify-center"
      >
        <img
          class="h-full w-4 relative"
          alt=""
          src="./loupe.png"
        />

        <!-- <b
          class="h-[1.188rem] w-[4.625rem] relative tracking-[0.03em] uppercase hidden whitespace-nowrap"
          >Search</b
        > -->
      </div>

      <!-- bahasa -->
      <div
        class="overflow-hidden flex flex-col items-end justify-center"
      >
        <!-- hidden -->
        <div
          class="w-[8rem] hidden flex-row items-center justify-end gap-[0.5rem]"
        >
          <img
            class="icon-size relative"
            alt=""
            src="./indonesia.png"
          />

          <div
            class="h-[1.188rem] flex-1 flex flex-row items-center justify-start gap-[0.187rem]"
          >
            <div class="  flex-1 relative tracking-[0.03em]">Indonesia</div>
            <img
              class="icon-size relative object-contain"
              alt=""
              src="./indonesia.png"
            />
          </div>
        </div>

        <!-- shown -->
        <div
          class="flex flex-row items-center justify-start"
        >
          <img
            class="icon-size relative"
            alt="indo-flag"
            src="./indonesia.png"
          />

          <div class="relative tracking-wide inline-block min-w-[3.5rem]">
            English
          </div>

          <img
            class="icon-size relative object-contain"
            alt="expand"
            src="./down-arrow.png"
          />
        </div>
      </div>

      <!-- Bottom nav -->
      <!-- <div
        class="  shadow-[0px_2px_4px_rgba(0,_0,_0,_0.1)] bg-white flex flex-row items-start justify-between pt-[0.656rem] px-[5rem] box-border max-w-full gap-[1.25rem] text-[1.125rem] text-dimgray mq1275:pl-[2.5rem] mq1275:pr-[2.5rem] mq1275:box-border"
      >
        <div
         class="w-[25.75rem] flex flex-col items-start justify-start pt-[0.343rem] box-border max-w-full"
        >
         <div
           class="  flex flex-row items-start justify-start gap-[1.25rem] max-w-full"
         >
           <div
            class="flex-1 rounded-t rounded-b-none bg-whitesmoke-300 overflow-hidden flex flex-row items-start justify-start py-[0.781rem] px-[1.25rem] box-border gap-[0.562rem] max-w-full"
           >
            <img
              class="h-[1.5rem] w-[1.5rem] relative overflow-hidden shrink-0 min-h-[1.5rem]"
              alt=""
              src="./indonesia.png"
            />

            <div
              class="flex flex-col items-start justify-start pt-[0.093rem]"
            >
              <b
               class="relative tracking-[0.03em] uppercase inline-block min-w-[6rem]"
               >category</b
              >
            </div>
           </div>
           <div
            class="flex flex-col items-start justify-start pt-[0.781rem] text-[0.938rem]"
           >
            <div
              class="flex flex-row items-start justify-start gap-[0.125rem]"
            >
              <img
               class="h-[1.5rem] w-[1.5rem] relative overflow-hidden shrink-0 min-h-[1.5rem]"
               alt=""
               src="./indonesia.png"
              />

              <div
               class="flex flex-col items-start justify-start pt-[0.187rem]"
              >
               <div
                 class="relative tracking-[0.03em] inline-block min-w-[2.688rem]"
               >
                 Home
               </div>
              </div>
            </div>
           </div>
         </div>
        </div>
        <div
         class="w-[42.438rem] flex flex-row items-start justify-start gap-[0.925rem] max-w-full text-[1rem] text-black"
        >
         <div
           class="h-[2.75rem] w-[2.75rem] rounded-981xl bg-white box-border overflow-hidden shrink-0 flex flex-row items-center justify-center p-[0.625rem] cursor-pointer border-[1px] border-solid border-gainsboro-200"
           id="cartBTNContainer"
         >
           <img
            class="h-[1.5rem] w-[1.2rem] relative"
            alt=""
            src="./indonesia.png"
           />
         </div>
         <div class="flex flex-col items-start justify-start pt-[0.781rem]">
           <div
            class="relative tracking-[0.03em] font-medium whitespace-nowrap cursor-pointer"
            id="text"
           >
            (+62) 0851 7687 9999
           </div>
         </div>
         <div
           class="h-[2.75rem] w-[2.75rem] rounded-981xl bg-white box-border overflow-hidden shrink-0 flex flex-row items-center justify-center py-[0.625rem] px-[0.562rem] border-[1px] border-solid border-gainsboro-200"
         >
           <img
            class="h-[1.5rem] w-[1.5rem] relative"
            alt=""
            src="./indonesia.png"
           />
         </div>
         <div class="flex flex-col items-start justify-start pt-[0.781rem]">
           <div
            class="relative tracking-[0.03em] font-medium inline-block min-w-[7.938rem] whitespace-nowrap"
           >
            sales@denryo.id
           </div>
         </div>
         <div class="flex flex-col items-start justify-start pt-[0.743rem]">
           <img
            class="w-[0.063rem] h-[1.269rem] relative object-contain"
            alt=""
            src="./indonesia.png"
           />
         </div>
         <div
           class="flex-1 flex flex-col items-start justify-start pt-[0.781rem]"
         >
           <div
            class="relative tracking-[0.03em] font-medium whitespace-nowrap"
           >
            Senin - Minggu 09.00 - 22.00
           </div>
         </div>
        </div>
      </div>
     </div> -->
    </div>

  </div>

  <!-- bottom nave -->
  <div class="bottomnav h-1/2 bg-blue-500">

  </div>
</nav>

<style>
  .icon-size
  {
    height: 1rem;
    width: 1rem;
  }
</style>