<script lang="ts">
	import { base } from '$app/paths';

  let subPages = [
    {
      name: "Denryo®",
      link: `${base}/`,
      color: " text-red-500",
    },
    {
      name: "TENTANG KAMI",
      link: `${base}/about`,
    },
    {
      name: "PRODUK",
      link: `${base}/product`,
    },
    {
      name: "sertifikasi",
      link: `${base}/certificates`,
    },
    {
      name: "hubungi kami",
      link: `${base}/contact-us`,
    },
    {
      name: "katalog",
      link: `${base}/catalog`,
    },
  ];

  let chosenSubMenu = -1

  // let handleMenuClick = (event:Event) => 
  // {
  //   // chosenSubMenu = id
  //   console.log(event.target.class);
  // }
</script>

<!-- Navbar -->
<div
  class="Navbar flex flex-col z-10 fixed top-0 left-0 right-0 w-screen h-[15vh] min-h-10 bg-white"
>
  <img
    class="object-contain h-[10vh] max-w-full absolute my-[2vh] mx-3"
    loading="lazy"
    alt="Daryo"
    src="./logo.png"
  />

  <div class="Navigation-top relative h-1/2 w-screen py-2" >
    <div class="Items flex self-stretch justify-end items-center">
      {#each subPages as page, index}
        <a
          href={page.link}
          class="Page text-black text-l font-medium font-['Roboto'] uppercase no-underline {page.color} {index === subPages.length-1 ? "": "border-r-2"} border-black px-6"
          >{page.name}</a
        >
        {/each}

        <div class="absolute bg-red-500 inset-0 popup-submenu {chosenSubMenu === -1 ? "opacity-0":"opacity-100"}">
          {chosenSubMenu}
        </div>
      
    </div>
  </div>

  <div
    class="Navigation-bottom h-1/2 w-full flex self-stretch justify-end items-center gap-12 py-2 px-6"
  >
    <div class="flex h-1/2 min-h-10 items-center justify-center gap-2">
      <img
        class="object-contain max-h-[70%] max-w-full"
        src="./phone-call.png"
        alt="phone"
      />
      <div class="text-black text-l font-medium font-['Roboto']">
        (+62) 0851 7687 9999
      </div>
    </div>

    <div class="flex h-1/2 min-h-10 items-center justify-center gap-2">
      <img
        class="object-contain max-h-[70%] max-w-full"
        src="./email.png"
        alt="mail"
      />
      <div class="text-black text-l font-medium font-['Roboto']">
        sales@denryo.co.id
      </div>
    </div>
    
    <div class="flex h-1/2 min-h-10 items-center justify-center gap-2">
      <div class="text-black text-l font-medium font-['Roboto']">
        Senin - Minggu 09.00 - 22.00
      </div>
    </div>
  </div>
</div>

<style>
  .popup-submenu {
    transform: translateY(100%);
  }


</style>