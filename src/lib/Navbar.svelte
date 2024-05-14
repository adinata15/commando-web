<script lang="ts">
  let subPages = [
    {
      id: 0,
      name: "TENTANG KAMI",
      link: "/about",
    },
    {
      id: 1,
      name: "PRODUK",
      link: "/about",
    },
    {
      id: 2,
      name: "sertifikasi",
      link: "/certification",
    },

    {
      id: 3,
      name: "hubungi kami",
      link: "/contact-us",
    },

    {
      id: 4,
      name: "katalog",
      link: "/shop",
    },
  ];
</script>

<!-- Navbar -->
<div
  class="Navbar flex flex-col z-10 fixed top-0 left-0 right-0 w-screen h-[20vh] min-h-10 bg-white"
>
  <div
    class="Navigation-top flex h-1/2 w-screen justify-between items-center px-6 py-2"
  >
    <img
      class="object-contain h-full max-w-full"
      loading="lazy"
      alt="Daryo"
      src="./logo.png"
    />

    <div class="Items flex self-stretch justify-end items-center gap-12">
      {#each subPages as page}
        <a
          href={page.link}
          class="Page text-black text-xl font-medium font-['Inter'] uppercase no-underline"
          >{page.name}</a
        >
      {/each}
      <div
        class="Button px-6 py-3.5 bg-black rounded-lg shadow justify-center items-center gap-2 flex"
      >
        <div
          class="Button text-white text-base font-medium font-['Inter'] leading-normal"
        >
          Button
        </div>
      </div>
    </div>
  </div>

  <div
    class="Navigation-bottom h-1/2 w-full flex self-stretch justify-end items-center gap-12 py-2 px-6"
  >
    <div class="flex h-1/2 min-h-10 items-center justify-center gap-2">
      <img
        class="object-contain h-full max-w-full"
        src="./phone-call.png"
        alt="phone"
      />
      <div class="text-black text-xl font-medium font-['Inter']">
        (061) 4566725
      </div>
    </div>

    <div class="flex h-1/2 min-h-10 items-center justify-center gap-2">
      <img
        class="object-contain h-full max-w-full"
        src="./email.png"
        alt="mail"
      />
      <div class="text-black text-xl font-medium font-['Inter']">
        sales@denryo.co.id
      </div>
    </div>
  </div>
</div>
