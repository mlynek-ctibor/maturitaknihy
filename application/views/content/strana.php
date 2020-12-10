<div class="container">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">Kniha</th>
      <th scope="col">Autor</th>
      <th scope="col">Přebal</th>
    </tr>
  </thead>
  <tbody>
     <?php foreach($knihy as $k): ?>
      <tr>
            <td>
                <?php echo $k->nazev_knihy;?>       
            </td>
            <td> 
                <?php echo $k->autor; ?>
            </td>
            <td>
            <a href="<?php echo base_url("prebal/".$k->id_knihy);?>">Zde</a>
            </td>
    </tr>
  <?php endforeach; ?>
  </tbody>
</table>
</div>