<div class="container">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">Kniha</th>
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
            <img src=<?php echo $k->prebal; ?>>
            </td>
  
    </tr>
  <?php endforeach; ?>
  </tbody>
</table>
</div>