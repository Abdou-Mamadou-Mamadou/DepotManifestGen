(*completons le squellete de code propose*)


let rec hanoi dep aux dest n =
  if n > 0 then begin
    (* Déplacer n-1 disques de dep à aux, en utilisant dest comme auxiliaire *)
    (* Déplacer le n-ième disque de dep à dest *)
    (* Déplacer n-1 disques de aux à dest, en utilisant dep comme auxiliaire *)
  end

let () = hanoi "A" "B" "C" 5


(*la fonction recursive auxiliaire  hanoi_aux*)


  
let rec hanoi_aux dep aux dest n =
  if n > 0 then begin
    (* Déplacer n-1 disques de dep à aux, en utilisant dest comme auxiliaire *)
    hanoi_aux dep dest aux (n - 1);
    (* Déplacer le n-ième disque de dep à dest *)
    Printf.printf "%s -> %s\n" dep dest;
    (* Déplacer n-1 disques de aux à dest, en utilisant dep comme auxiliaire *)
    hanoi_aux aux dep dest (n - 1)
  end




 (*fonction hanoi n qui appelle la fonction
récursive auxiliaire hanoi_aux "A" "B" "C" n*)


let hanoi n = hanoi_aux "A" "B" "C" n


(* ces fonctions determine le temps de l'execution du programme pour hanoi *)


let temps n =
  let temps1 = Sys.time () in
  hanoi 5;
  let temps2 = Sys.time () in
  temps2 -. temps1

let find acc =
  let rec loop n =
    let time = temps n in
    Printf.printf "Temps d'exécution pour hanoi %d : %f secondes\n" n time;
    if time > acc then n
    else loop (n + 1)
  in
  loop 1

  (*cette fonction determine la valeur n à partir du quelle le temps depasse 10s *)

let () =
  let acc = 10.0 in
  let resultat = find  acc in
  Printf.printf "La valeur de n à partir de laquelle le temps d'exécution dépasse %f secondes est %d\n" acc resultat
