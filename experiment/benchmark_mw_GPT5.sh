# usage: bash benchmark.sh <GPU_ID> <PATH_TO_BENCHMARK.PY>
for task in "door-open-v2-goal-observable" "door-close-v2-goal-observable" "basketball-v2-goal-observable" "shelf-place-v2-goal-observable" "button-press-v2-goal-observable" "button-press-topdown-v2-goal-observable" "faucet-close-v2-goal-observable" "faucet-open-v2-goal-observable" "handle-press-v2-goal-observable" "hammer-v2-goal-observable" "assembly-v2-goal-observable"
do 
    CUDA_VISIBLE_DEVICES=$1 python benchmark_mw_gpt5.py --env_name $task --n_exps 25 --ckpt_dir "../ckpts/gpt5_fsVar_001" --milestone 9 --result_root "../results/gpt5_fsVar_001"
done

python org_results_mw.py --results_root "../results/gpt5_fsVar_001" 