<script lang="ts">
  import { Button } from "$lib/components/ui/button/index.js";
  import { Input } from "$lib/components/ui/input/index.js";

  let companyProducts = [
    {
      name: "Product 1",
      items: [
        {
          name: "Item 1"
        },
        {
          name: "Item 2"
        }
      ]
    }, 

    {
      name: "Product 2",
      items: [
        {
          name: "Item 1"
        },
        {
          name: "Item 2"
        }
      ]
    },
  ]

let companyLocation = [
  {
    name: "Location 1",
    details: "Location details",
  },
  {
    name: "Location 2",
    details: "Location details",
  },
]
</script>

<!-- Footer top (image) -->
<div class="FooterTop flex justify-between items-center h-48 w-screen">
  <div class="ImageCenter bg-white h-full w-1/2 flex flex-col gap-2 justify-start items-start p-6">
    <h1>Follow us</h1>
    <h2>Follow for more promotion</h2>
     
    <form class="flex w-full max-w-sm items-center space-x-2">
      <Input type="email" placeholder="Please input your email address" />
      <Button type="submit">Send</Button>
    </form>

  </div>

  <div class="gradient-container h-full w-1/2">
    <img src="./origin_denryo.jpg" alt="Denryo" class="object-cover min-h-full min-w-full" />
  </div>

</div>

<div class="FooterLinks bg-gray-500 h-64 w-screen flex flex-col justify-between items-start gap-2 p-6">

  <!-- Main Footer -->
  <div class="MainFooter w-full h-full flex justify-between items-start gap-2">
    <!-- Company info -->
    <div class="CompanyInfo flex flex-col h-full w-1/3">
      <h1 class="underline">Company Name</h1>
      
      <ul>
        {#each companyLocation as location}
        <li class="flex justify-start">
          <div class="svgIcon h-full mr-2">
            <i class="fa fa-camera-retro fa-lg" />
          </div>

          <div class="flex flex-col">
            <h2> {location.name} </h2>
            <p> {location.details} </p>
            <!-- <ul>
              {#each product.items as item}
              <li> {item.name} </li>
              {/each}
            </ul> -->
          </div>
        </li>
        {/each}
        <!-- <li>
          <h2> Indonesia </h2>
        </li>

        <li>
          <h2> Indonesia </h2>
          <p> Some details here </p>
        </li> -->
      </ul>

      <div class="CompanyLogo w-32 h-auto">
        <img src="./logo.png" class="w-32 h-auto object-contain" alt="denryo" />
      </div>
    </div>

    <!-- Company Products -->
    <div class="CompanyProducts flex flex-col h-full w-1/3">
      <h1 class="underline"> Company Products </h1>

      <ul>
        {#each companyProducts as product}
        <li class="flex justify-start">
          <div class="svgIcon h-full mr-2">
            <i class="fa fa-camera-retro fa-lg" />
          </div>

          <div class="flex flex-col">
            <h2> {product.name} </h2>
            <ul>
              {#each product.items as item}
              <li> {item.name} </li>
              {/each}
            </ul>
          </div>
        </li>
        {/each}
      </ul>
    </div>
    
    <!-- Company Policy -->
    <div class="CompanyPolicy flex flex-col h-full w-1/3">
      <h1 class="underline"> Company Policy </h1>

      <ul>
        <li> Policy 1 </li>
        <li> Policy 2 </li>
      </ul>

    </div>
  </div>
</div>

<!-- Copyright -->
<div class="bg-gray-600 w-screen h-auto px-6 py-1">
  Copyright 2022 - Denryo.co.id
</div>

<!-- Final page divider -->
<div class="Divider w-screen h-px border border-neutral-200" />

<style lang="postcss">
  h1 {
    @apply text-xl font-semibold font-['Roboto'] leading-10 uppercase
  }

  h2{
    @apply text-lg font-normal font-['Roboto'] leading-9
  }

  /* h2::before{
    font: var(--fa-font-solid);
    content: '\f05b';
    position: inline-block;
  } */

  p, li{
    @apply text-base font-medium font-['Roboto'] leading-normal
  }

  .gradient-container {
    overflow: hidden;
    position: relative;
    mix-blend-mode: hard-light;
  }

  /* mask for real object */
  .gradient-container::before {
    position: absolute;
    content: "";
    left: 0px;
    top: 0px;
    height: 100%;
    width: 100%;
    background: linear-gradient(to right,rgba(255, 255, 255, 1) 0%, rgba(0,0,0,0.5) 50%);
    pointer-events: none;
  }

</style>