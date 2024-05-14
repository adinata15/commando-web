<script lang="ts">
  import { type MenuCellType } from "./ObjectTypes"
  export let item:MenuCellType
</script>

<!-- <a class="w-full h-full bg-red-500 hover:invert" href={item.link}> {item.name} </a> -->
<div class="absolute dropdown-pos bg-red-600 w-full">
  Hi
</div>


<style>
  .dropdown-pos
  {
    height: 80vh;
    bottom: -80vh;
    left: 0;
  }
</style>