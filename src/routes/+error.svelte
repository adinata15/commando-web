<script lang='ts'>
	import { Button } from "@/components/ui/button/index.js";

    import { base } from "$app/paths"

</script>

<div class="LandingPage flex flex-col w-screen mt-[20vh] h-[50vh]">
    <!-- landing view -->
    <div class="Header h-full flex flex-col justify-center items-center gap-6">
            <h1> Page Error </h1>
            <p> Please navigate back to the home page </p>
            <Button class="mx-auto py-2 px-6 w-24 h-10 bg-white rounded-lg text-green text-base font-medium font-['Roboto'] leading-normal no-underline border-green-300 border hover:bg-green-100" variant="link" href="{base}/"> Home </Button>
    </div>
</div>
    
<style lang="postcss">
	h1{
		@apply text-4xl font-semibold font-['Roboto'] leading-10;
	}

	p{
		@apply text-xl font-normal font-['Roboto'] leading-loose;
	}
</style>