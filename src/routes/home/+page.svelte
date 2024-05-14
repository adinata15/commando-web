<script>
    import Carousel from "../../lib/Carousel.svelte";
    import Navbar from "../../lib/Navbar.svelte";

	let subheadings = ["bg-blue-500", "bg-red-500", "bg-green-500", "bg-yellow-500"]
	let heading__font = "text-4xl font-semibold font-['Inter'] leading-10";
	let subheading__font = "text-2xl font-normal font-['Inter'] leading-9";
	let body__font = "text-xl font-medium font-['Inter'] leading-loose";

	let cards = 
	[
		{
		id: 0,
		title: "title",
		img_src: "./email.png",
		description: "24/7 service"
		},
		{
		id: 1,
		title: "title",
		img_src: "./email.png",
		description: "24/7 service"
		},
		{
		id: 2,
		title: "title",
		img_src: "./email.png",
		description: "24/7 service"
		}, 
 		{
		id: 3,
		title: "title",
		img_src: "./email.png",
		description: "24/7 service"
		}, 
	]


</script>

<div class="DemoPage relative flex flex-col w-screen overflow-x-hidden">

	<Navbar/>

	<!-- Landing page -->
	<div class="LandingPage flex flex-col w-screen mt-[20vh] h-[80vh]">
		<!-- landing view -->
		<div class="Header h-full flex flex-col justify-center items-center gap-6">
			<Carousel />
		<!-- <div class="LandingPageTitle self-stretch text-center text-black text-6xl font-bold font-['Inter']">Landing page title</div>
		<div class="AndASubheadingDescribingYourSiteToo self-stretch text-center text-zinc-500 text-2xl font-normal font-['Inter'] leading-9">And a subheading describing your site, too</div>
		<div class="Button px-6 py-3.5 bg-black rounded-lg shadow justify-center items-center gap-2 flex">
			<div class="Button text-white text-base font-medium font-['Inter'] leading-normal">Button</div>
		</div> -->
		</div>
	</div>

	<!-- Four stuff -->
	<div class="flex gap-6 justify-center items-center h-1/6 w-screen py-2">
		{#each cards as card}
		<div class="Card h-full w-50 flex justify-center items-center gap-2 p-2 border-solid border-4 border-gray-600 rounded-2xl">
			<img class="h-2/3 max-w-20 object-contain" src={card.img_src} alt="icon" />
			<div class="flex flex-col">
				<h1 class="{subheading__font} uppercase"> {card.title} </h1>
				<p class="{body__font}"> {card.description} </p>
			</div>
		</div>
		{/each}
	</div>

	<!-- Subsection -->
	<div class="Subsection1 h-screen w-screen flex justify-between">
		<div class="DetailLeft h-screen w-1/2 flex flex-col justify-center items-start px-6 bg-blue-500">
		  <div class="Heading self-stretch text-black text-4xl font-semibold font-['Inter'] leading-10">Heading</div>
		  <div class="ASubheadingForThisSectionAsLongOrAsShortAsYouLike self-stretch text-zinc-500 text-2xl font-normal font-['Inter'] leading-9">A subheading for this section, as long or as short as you like</div>
		  <div class="Button flex px-6 py-3.5 bg-black rounded-lg justify-center items-center">
			<div class="Button text-white text-base font-medium font-['Inter'] leading-normal">Button</div>
		  </div>
		</div>
		<div class="ImageRight h-screen w-1/2 bg-red-400 flex items-center pr-6">
			<img class="Image max-w-full" src="https://via.placeholder.com/624x400" alt="some images"/>
		</div>
	</div>


	<!-- Another subsection -->
	<div class="Subsection1 h-screen w-screen flex justify-between">
		<div class="ImageLeft h-screen w-1/2 bg-red-400 flex items-center pl-6">
			<img class="Image max-w-full" src="https://via.placeholder.com/624x400" alt="some images"/>
		</div>
		<div class="DetailLeft h-screen w-1/2 flex flex-col justify-center items-start px-6 bg-blue-500">
		  <div class="Heading self-stretch text-black text-4xl font-semibold font-['Inter'] leading-10">Heading</div>
		  <div class="ASubheadingForThisSectionAsLongOrAsShortAsYouLike self-stretch text-zinc-500 text-2xl font-normal font-['Inter'] leading-9">A subheading for this section, as long or as short as you like</div>
		  <div class="Button flex px-6 py-3.5 bg-black rounded-lg justify-center items-center">
			<div class="Button text-white text-base font-medium font-['Inter'] leading-normal">Button</div>
		  </div>
		</div>
	</div>

	<!-- Subheadings page -->
	<div class="SubheadingPage flex flex-col h-screen w-screen justify-between">
		<div class="Heading h-[20vh] p-6 text-black text-4xl font-semibold font-['Inter'] leading-10 bg-purple-500">Heading</div>
		<div class="Subheadings h-[80vh] grid grid-cols-2 grid-row-2">
{#each subheadings as subheading}
			<!-- the full parent/viewport here is already done per grid -->
			<div class="Subheading h-full w-full flex flex-col justify-center items-start p-6 gap-6 {subheading}">
				<div class="w-8 h-8 justify-center items-center flex">
					<!-- Globe -->
					<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
					<path stroke-linecap="round" stroke-linejoin="round" d="M12 21a9.004 9.004 0 0 0 8.716-6.747M12 21a9.004 9.004 0 0 1-8.716-6.747M12 21c2.485 0 4.5-4.03 4.5-9S14.485 3 12 3m0 18c-2.485 0-4.5-4.03-4.5-9S9.515 3 12 3m0 0a8.997 8.997 0 0 1 7.843 4.582M12 3a8.997 8.997 0 0 0-7.843 4.582m15.686 0A11.953 11.953 0 0 1 12 10.5c-2.998 0-5.74-1.1-7.843-2.918m15.686 0A8.959 8.959 0 0 1 21 12c0 .778-.099 1.533-.284 2.253m0 0A17.919 17.919 0 0 1 12 16.5c-3.162 0-6.133-.815-8.716-2.247m0 0A9.015 9.015 0 0 1 3 12c0-1.605.42-3.113 1.157-4.418" />
					</svg>
				</div>
				<div class="SubheadingTitle self-stretch text-black text-2xl font-normal font-['Inter'] leading-9">Subheading</div>
				<div class="SubheadingContent self-stretch text-zinc-500 text-xl font-medium font-['Inter'] leading-loose">Body text for whatever you’d like to say. Add main takeaway points, quotes, anecdotes, or even a very very short story. </div>
			</div>
{/each}
		</div>
	</div>

	<!-- Footer -->
	<div class="Footer h-screen w-screen">
		<!-- Footer heading -->
		<div class="HeadingWithBackground h-[60vh] w-full px-80 py-28 bg-neutral-100 justify-center items-center flex">
		  <div class="Header grow shrink basis-0 self-stretch flex-col justify-start items-center gap-6 flex">
			<div class="Heading self-stretch text-center text-black text-4xl font-semibold font-['Inter'] leading-10">Heading</div>
			<div class="PlusASubheadingForYourSiteSFooter self-stretch text-center text-zinc-500 text-2xl font-normal font-['Inter'] leading-9">Plus a subheading for your site’s footer</div>
			<div class="Button px-6 py-3.5 bg-black rounded-lg shadow justify-center items-center gap-2 flex">
			  <div class="Button text-white text-base font-semibold font-['Inter'] leading-7">Button</div>
			</div>
		  </div>
		</div>
	
		<!-- Footer Links-->
		<div class="FooterLinks flex flex-row w-full h-[40vh] bg-red-400 justify-between">
			<div class="FooterSosMed h-full flex flex-col justify-between p-6 w-1/2">
				<div class="SiteName text-black text-2xl font-normal font-['Inter'] leading-9">Site name</div>
				<div class="SocialIcons flex justify-start items-start gap-2">
{#each subheadings as subheading}
					<div class="ButtonsIcon w-10 h-10 p-2 rounded justify-center items-center flex">
						<div class="Icon grow shrink basis-0 self-stretch px-0.5 py-0.5 justify-center items-center flex">
							<img class="Icon w-5 h-5" src="https://via.placeholder.com/20x20" alt="sosmed logo"/>
						</div>
					</div>
{/each}
				</div>
			</div>
	
			<div class="FooterMenu h-full flex flex-col justify-between items-end gap-6 p-6 w-1/2">
				<div class="Topic self-stretch text-black text-base font-medium font-['Inter'] leading-normal">Topic</div>
				<div class="Page self-stretch text-zinc-700 text-base font-medium font-['Inter'] leading-normal">Page</div>
				<div class="Page self-stretch text-zinc-700 text-base font-medium font-['Inter'] leading-normal">Page</div>
				<div class="Page self-stretch text-zinc-700 text-base font-medium font-['Inter'] leading-normal">Page</div>
			</div>
	
		</div>

		<!-- Final page divider -->
		<div class="Divider w-screen h-px border border-neutral-200" />
	</div>

  </div>

  <style>
  </style>