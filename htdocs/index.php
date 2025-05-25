<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
include("includes/db.php");
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Miniweb de Criminales del fútbol</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

<div class="container py-5">
    <h1 class="text-center mb-4">Mayores patanegras del fútbol</h1>
    <div class="row" id="jugadores-container">
        <?php
        $sql = "SELECT * FROM patanegras";
        $result = $conn->query($sql);
        

        if ($result && $result->num_rows > 0):
            while ($row = $result->fetch_assoc()):
        ?>
        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm">
                <!-- Imagen desde la base de datos -->
                <img src="img/<?php echo htmlspecialchars($row['foto'] ?? 'sinfoto.jpg'); ?>" 
                     class="card-img-top" 
                     alt="<?php echo htmlspecialchars($row['nombre'] ?? 'Jugador'); ?>">

                <div class="card-body d-flex flex-column">
                    <!-- Nombre -->
                    <h5 class="card-title"><?php echo htmlspecialchars($row['nombre'] ?? ''); ?></h5>

                    <!-- Equipo y posición -->
                    <p class="card-text text-muted">
                        <?php echo htmlspecialchars($row['equipo'] ?? '') . " - " . htmlspecialchars($row['posicion'] ?? ''); ?>
                    </p>

                    <!-- Descripción oculta -->
                    <p class="card-text descripcion mt-2" style="display: none;">
                        <?php echo htmlspecialchars($row['descripcion'] ?? ''); ?>
                    </p>

                    <!-- Botón -->
                    <button class="btn btn-danger mt-auto toggle-descripcion">Mostrar/Ocultar descripción</button>
                </div>
            </div>
        </div>
        <?php
            endwhile;
        else:
            echo "<p>No hay jugadores disponibles.</p>";
        endif;
        $conn->close();
        ?>
    </div>
</div>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
$(document).ready(function() {
    $(".toggle-descripcion").click(function() {
        $(this).siblings(".descripcion").fadeToggle();
        $(this).text($(this).text().includes("Mostrar") ? "Ocultar descripción" : "Mostrar descripción");
    });
});
</script>

</body>
</html>
