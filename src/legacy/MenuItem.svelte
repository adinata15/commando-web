<script lang="ts">

  import MenuExpand from "./MenuExpand.svelte";
  import { type MenuCellType } from "./ObjectTypes"

  const DROPDOWNSIZE = "80vh"
  let isOpen = false

  export let subMenu:MenuCellType[] = []

  // export let id: number
  export let name = "???"
  export let link = "???"
</script>

<div class="flex flex-col items-center justify-center" on:mouseenter={() => isOpen = true} on:mouseleave={() => isOpen = false} role="navigation">
  <div class="bg-blue-500 hover:cursor-pointer font-sans h-full max-w-20">
    <a href={link}>{name}</a>
  </div>
  {#if subMenu.length !== 0 && isOpen === true}
    <div class="flex flex-col justify-center w-screen">
      {#each subMenu as listItem}
        <MenuExpand item={listItem}/>
      {/each}
    </div>
  {/if}
</div>



<style>


</style>