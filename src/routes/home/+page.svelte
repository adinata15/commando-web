<script lang="ts">
    import FullPageCarousel from "$lib/FullPageCarousel.svelte";
	import { Button } from "@/components/ui/button/index.js";
	import * as Card from "$lib/components/ui/card/index.js";
	import * as Carousel from "$lib/components/ui/carousel/index.js";
	import Autoplay from "embla-carousel-autoplay";

	let cards = 
	[
		{
			id: 0,
			title: "Easiness",
			img_src: "./dollar.png",
			description: "Quick transaction"
		},
		{
			id: 1,
			title: "support",
			img_src: "./support.png",
			description: "24 hour on day"
		},
		{
			id: 2,
			title: "Delivery",
			img_src: "./fast.png",
			description: "Within the country"
		}, 
 		{
			id: 3,
			title: "warranty",
			img_src: "./warranty.png",
			description: "+ 365 days"
		}, 
	]

	let products = 
	[
		{
			img_src: "./product_1.jpg",
			description: "Produk"
		},
		{
			img_src: "./product_2.jpg",
			description: "Produk"
		},
		{
			img_src: "./product_3.jpg",
			description: "Produk"
		},
		{
			img_src: "./product_4.jpg",
			description: "Produk"
		},
		{
			img_src: "./product_5.jpg",
			description: "Produk"
		},
		{
			img_src: "./product_6.jpg",
			description: "Produk"
		},
		{
			img_src: "./logo_kubota.jpg",
			description: "Produk"
		},
	]

	let news = 
	[
		{
			img_src: "./simbol_denryo.png",
			date: "2015-01-01",
			description: "Berita yang sangat mengcengangkan"
		},
		{
			img_src: "./simbol_denryo.png",
			date: "2015-01-01",
			description: "Ai pang sai liao"
		},
		{
			img_src: "./simbol_denryo.png",
			date: "2015-01-01",
			description: "Produk"
		},
		{
			img_src: "./simbol_denryo.png",
			date: "2015-01-01",
			description: "Produk"
		},
		{
			img_src: "./simbol_denryo.png",
			date: "2015-01-01",
			description: "Produk"
		},
		]
</script>

<div class="DemoPage relative flex flex-col w-screen overflow-x-hidden">

	<!-- Landing page -->
	<div class="LandingPage flex flex-col w-screen mt-[20vh] h-[60vh]">
		<!-- landing view -->
		<div class="Header h-full flex flex-col justify-center items-center gap-6">
			<FullPageCarousel />
		</div>
	</div>

	<!-- Four stuff -->
	<div class="flex gap-6 justify-center items-center h-1/6 w-screen p-6">
		{#each cards as card}
		<Card.Root>
			<Card.Content
			class="h-full min-w-72 basis-1/5 flex justify-center items-center gap-3 p-2 border-solid border-2 border-gray-600 rounded-2xl bg-gray-100"
			>
			<img class="h-5/8 max-w-16 object-contain" src={card.img_src} alt={card.description}  />
			<div class="flex flex-col">
				<h2 class="uppercase"> {card.title} </h2>
				<p> {card.description} </p>
			</div>
			</Card.Content>
		</Card.Root>
		{/each}
	</div>

	<!-- Products carousel -->
	<div class="w-screen flex flex-col p-6 h-auto">
		<h1 class="ProductsTitle py-2 text-xl font-semibold font-['Roboto'] leading-10 uppercase">Products and services</h1>
		<div class="w-full h-1 bg-gray-500" />
	</div>
	<div class="w-full h-72  flex flex-col justify-center items-center p-6 bg-gray-100">
		<Carousel.Root
			plugins={[
				Autoplay({
				delay: 2000,
				}),
			]}	
			class="w-5/6"
		>
			<Carousel.Content class="-ml-1">
				{#each products as product}
				<Carousel.Item class="pl-1 basis-1/5">
					<div class="p-1">
					<Card.Root>
						<Card.Content
						class="flex flex-col items-center justify-center p-1"
						>
						<img src={product.img_src} class="min-w-full h-full object-contain" alt="produk" />
						<!-- <span class="text-2xl font-semibold">{product.description}</span> -->
						</Card.Content>
					</Card.Root>
					</div>
				</Carousel.Item>
				{/each}
			</Carousel.Content>

			<div class="flex justify-center items-center gap-2">
				<Carousel.Previous class="relative h-8 w-8 rounded-sm" />
				<Carousel.Next class="relative h-8 w-8 rounded-sm" />
			</div>
		</Carousel.Root>	
	</div>

	<!-- Subsection -->
	<div class="Subsection1 h-screen w-screen flex justify-between">
		<div class="DetailLeft h-screen w-1/2 flex flex-col justify-center items-start px-6 bg-white">
		  <h1 class="Heading self-stretch uppercase">Asal usul the legen of aang</h1>
		  <h2 class="ASubheadingForThisSectionAsLongOrAsShortAsYouLike self-stretch text-zinc-500 pt-2">
			As a technology trading company we keep a firm grasp on market trends, and utilize our global network to provide our customers with the most up-to-date information, the best products, and the most reliable services. In cooperation with our manufacturing partners, it is our mission to promote industry and foster a prosperous society.”
			Since SUN-WA was founded, the three elements that our company has strived to keep in harmony and develop are our customers, our shareholders and our employees; as well as electrics, electronics and machinery.
		  </h2>
		  <Button class="px-6 py-3.5 bg-black rounded-lg text-white text-base font-medium font-['Roboto'] leading-normal" type="submit">Read More</Button>
		</div>
		<div class="ImageRight h-screen w-1/2 bg-white flex items-center pr-6">
			<img class="Image max-w-full" src="./origin_denryo.jpg" alt="some images"/>
		</div>
	</div>

	<!-- News carousel -->
	<!-- <div class="w-screen flex flex-col p-6 h-auto">
		<h1 class="ProductsTitle py-2 text-xl font-semibold font-['Roboto'] leading-10 uppercase">sio sio e gosip</h1>
		<div class="w-full h-1 bg-gray-500" />
	</div>

	<div class="Products w-full p-6 h-80 flex justify-center items-center gap-2">
		{#each news as news}
		<div class="p-1 basis-1/5 ">
			<Card.Root>
				<Card.Content
					class="flex flex-col max-w-1/5 h-full w-full items-start justify-center p-6"
				>
				<img src={news.img_src} class="max-w-full h-5/6 object-contain " alt="berita" />
				<span class="text-sm">{news.date}</span>
				<span class="text-lg font-semibold uppercase">{news.description}</span>
				</Card.Content>
			</Card.Root>
		</div>
		{/each}
	</div> -->

	<!-- Partners -->
	<div class="w-screen flex flex-col p-6 h-auto">
		<h1 class="ProductsTitle py-2 text-xl font-semibold font-['Roboto'] leading-10 uppercase">Partners</h1>
		<div class="w-full h-1 bg-gray-500" />

		<div class="Products w-full my-2 h-56 flex justify-between items-center gap-2 border-gray-400 border-2">
			{#each products as product}
			<div class="p-1 h-5/6">
				<img src={product.img_src} class="max-w-full h-5/6 object-contain " alt={product.description} />
			</div>
			{/each}
		</div>

		<Button class="mx-auto py-2 px-6 w-32 h-16 bg-white rounded-lg text-green text-base font-medium font-['Roboto'] leading-normal no-underline border-green-300 border hover:bg-green-100" variant="link" href="/about">Read More</Button>
	</div>


	<!-- Another subsection -->
	<!-- <div class="Subsection1 h-screen w-screen flex justify-between">
		<div class="ImageLeft h-screen w-1/2 bg-red-400 flex items-center pl-6">
			<img class="Image max-w-full" src="https://via.placeholder.com/624x400" alt="some images"/>
		</div>
		<div class="DetailLeft h-screen w-1/2 flex flex-col justify-center items-start px-6 bg-blue-500">
		  <h1 class="Heading">Heading</h1>
		  <h2 class="ASubheadingForThisSectionAsLongOrAsShortAsYouLike self-stretch text-zinc-500 ">A subheading for this section, as long or as short as you like</h2>
		  <div class="Button flex px-6 py-3.5 bg-black rounded-lg justify-center items-center">
			<div class="Button text-white text-base font-medium font-['Roboto'] leading-normal">Button</div>
		  </div>
		</div>
	</div> -->

	<!-- Subheadings page -->
	<!-- <div class="SubheadingPage flex flex-col h-screen w-screen justify-between">
		<h1 class="Heading h-[20vh] p-6 bg-purple-500">Heading</h1>
		<div class="Subheadings h-[80vh] grid grid-cols-2 grid-row-2">
{#each subheadings as subheading} -->
			<!-- the full parent/viewport here is already done per grid -->
			<!-- <div class="Subheading h-full w-full flex flex-col justify-center items-start p-6 gap-6 {subheading}">
				<div class="w-8 h-8 justify-center items-center flex"> -->
					<!-- Globe -->
					<!-- <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
					<path stroke-linecap="round" stroke-linejoin="round" d="M12 21a9.004 9.004 0 0 0 8.716-6.747M12 21a9.004 9.004 0 0 1-8.716-6.747M12 21c2.485 0 4.5-4.03 4.5-9S14.485 3 12 3m0 18c-2.485 0-4.5-4.03-4.5-9S9.515 3 12 3m0 0a8.997 8.997 0 0 1 7.843 4.582M12 3a8.997 8.997 0 0 0-7.843 4.582m15.686 0A11.953 11.953 0 0 1 12 10.5c-2.998 0-5.74-1.1-7.843-2.918m15.686 0A8.959 8.959 0 0 1 21 12c0 .778-.099 1.533-.284 2.253m0 0A17.919 17.919 0 0 1 12 16.5c-3.162 0-6.133-.815-8.716-2.247m0 0A9.015 9.015 0 0 1 3 12c0-1.605.42-3.113 1.157-4.418" />
					</svg>
				</div>
				<h2 class="SubheadingTitle self-stretch text-black">Subheading</h2>
				<p class="SubheadingContent self-stretch text-zinc-500">Body text for whatever you'd like to say. Add main takeaway points, quotes, anecdotes, or even a very very short story. </p>
			</div>
{/each}
		</div>
	</div> -->

  </div>

  <style lang="postcss">
	h1{
		@apply text-4xl font-semibold font-['Roboto'] leading-10;
	}
	
	h2{
		@apply text-2xl font-normal font-['Roboto'] leading-9;
	}

	p{
		@apply text-xl font-medium font-['Roboto'] leading-loose;
	}

	.gradient-container {
		overflow: hidden;
		position: relative;
		mix-blend-mode: normal;
	}

  /* mask for real object */
  .gradient-container::after {
    position: absolute;
    content: "";
    left: 0px;
    top: 0px;
    height: 100%;
    width: 100%;
    background: linear-gradient(to right, rgba(255, 255, 255, 1) 0%, transparent 20%, transparent 80%, rgba(255, 255, 255, 1) 100%);
    pointer-events: none;
  }
  </style>