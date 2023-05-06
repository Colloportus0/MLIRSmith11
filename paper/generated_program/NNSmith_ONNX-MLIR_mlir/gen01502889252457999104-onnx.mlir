module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_5(dense<[5, 6]> : tensor<2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i32>
  llvm.mlir.global internal constant @constant_4(dense<5> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i32>, %arg8: !llvm.ptr<i32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg14, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg15, %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg12, %15[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(1 : i64) : i64
    %21 = llvm.mlir.constant(0 : i32) : i32
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(4 : index) : i64
    %31 = llvm.insertvalue %30, %29[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %41 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %43 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.insertvalue %42, %43[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(4 : index) : i64
    %49 = llvm.insertvalue %48, %47[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i32>>
    %53 = llvm.bitcast %52 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %55 = llvm.insertvalue %53, %54[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.insertvalue %53, %55[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.insertvalue %57, %56[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<2 x i32>>
    %64 = llvm.bitcast %63 : !llvm.ptr<array<2 x i32>> to !llvm.ptr<i32>
    %65 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %66 = llvm.insertvalue %64, %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.constant(2 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.null : !llvm.ptr<i32>
    %77 = llvm.getelementptr %76[%74] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<i32> to i64
    %79 = llvm.mlir.constant(16 : index) : i64
    %80 = llvm.add %78, %79  : i64
    %81 = llvm.call @malloc(%80) : (i64) -> !llvm.ptr<i8>
    %82 = llvm.bitcast %81 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<i32> to i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.sub %79, %84  : i64
    %86 = llvm.add %83, %85  : i64
    %87 = llvm.urem %86, %79  : i64
    %88 = llvm.sub %86, %87  : i64
    %89 = llvm.inttoptr %88 : i64 to !llvm.ptr<i32>
    %90 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %91 = llvm.insertvalue %82, %90[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.insertvalue %89, %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.insertvalue %93, %92[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.insertvalue %74, %94[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %75, %95[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%97 : i64)
  ^bb1(%100: i64):  // 2 preds: ^bb0, ^bb2
    %101 = llvm.icmp "slt" %100, %98 : i64
    llvm.cond_br %101, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %102 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.getelementptr %102[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %104 = llvm.load %103 : !llvm.ptr<i32>
    %105 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.getelementptr %105[%22] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.load %106 : !llvm.ptr<i32>
    %108 = llvm.icmp "sgt" %104, %107 : i32
    %109 = llvm.select %108, %104, %107 : i1, i32
    %110 = llvm.extractvalue %96[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.getelementptr %110[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %109, %111 : !llvm.ptr<i32>
    %112 = llvm.add %100, %99  : i64
    llvm.br ^bb1(%112 : i64)
  ^bb3:  // pred: ^bb1
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.null : !llvm.ptr<i32>
    %116 = llvm.getelementptr %115[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<i32> to i64
    %118 = llvm.mlir.constant(16 : index) : i64
    %119 = llvm.add %117, %118  : i64
    %120 = llvm.call @malloc(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.bitcast %120 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %122 = llvm.ptrtoint %121 : !llvm.ptr<i32> to i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.sub %118, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.urem %125, %118  : i64
    %127 = llvm.sub %125, %126  : i64
    %128 = llvm.inttoptr %127 : i64 to !llvm.ptr<i32>
    %129 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %130 = llvm.insertvalue %121, %129[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %128, %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.insertvalue %132, %131[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %113, %133[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %114, %134[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.null : !llvm.ptr<i32>
    %138 = llvm.getelementptr %137[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %139 = llvm.ptrtoint %138 : !llvm.ptr<i32> to i64
    %140 = llvm.alloca %139 x i32 : (i64) -> !llvm.ptr<i32>
    %141 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %142 = llvm.insertvalue %140, %141[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %143 = llvm.insertvalue %140, %142[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.insertvalue %144, %143[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%146 : i64)
  ^bb4(%149: i64):  // 2 preds: ^bb3, ^bb8
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb5, ^bb9
  ^bb5:  // pred: ^bb4
    %151 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %21, %151 : !llvm.ptr<i32>
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%152 : i64)
  ^bb6(%155: i64):  // 2 preds: ^bb5, ^bb7
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %157 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.mlir.constant(2 : index) : i64
    %159 = llvm.mul %149, %158  : i64
    %160 = llvm.add %159, %155  : i64
    %161 = llvm.getelementptr %157[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %162 = llvm.load %161 : !llvm.ptr<i32>
    %163 = llvm.extractvalue %96[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.getelementptr %163[%155] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %165 = llvm.load %164 : !llvm.ptr<i32>
    %166 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %167 = llvm.load %166 : !llvm.ptr<i32>
    %168 = llvm.mul %162, %165  : i32
    %169 = llvm.add %167, %168  : i32
    %170 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %169, %170 : !llvm.ptr<i32>
    %171 = llvm.add %155, %154  : i64
    llvm.br ^bb6(%171 : i64)
  ^bb8:  // pred: ^bb6
    %172 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %173 = llvm.load %172 : !llvm.ptr<i32>
    %174 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.getelementptr %174[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %173, %175 : !llvm.ptr<i32>
    %176 = llvm.add %149, %148  : i64
    llvm.br ^bb4(%176 : i64)
  ^bb9:  // pred: ^bb4
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mlir.null : !llvm.ptr<i32>
    %186 = llvm.getelementptr %185[%184] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %187 = llvm.ptrtoint %186 : !llvm.ptr<i32> to i64
    %188 = llvm.mlir.constant(16 : index) : i64
    %189 = llvm.add %187, %188  : i64
    %190 = llvm.call @malloc(%189) : (i64) -> !llvm.ptr<i8>
    %191 = llvm.bitcast %190 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %192 = llvm.ptrtoint %191 : !llvm.ptr<i32> to i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.sub %188, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.urem %195, %188  : i64
    %197 = llvm.sub %195, %196  : i64
    %198 = llvm.inttoptr %197 : i64 to !llvm.ptr<i32>
    %199 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %200 = llvm.insertvalue %191, %199[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %198, %200[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.insertvalue %202, %201[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %177, %203[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %178, %204[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %179, %205[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %180, %206[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %183, %207[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %182, %208[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %180, %209[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %181, %210[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%212 : i64)
  ^bb10(%215: i64):  // 2 preds: ^bb9, ^bb20
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%217 : i64)
  ^bb12(%220: i64):  // 2 preds: ^bb11, ^bb19
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%222 : i64)
  ^bb14(%225: i64):  // 2 preds: ^bb13, ^bb18
    %226 = llvm.icmp "slt" %225, %223 : i64
    llvm.cond_br %226, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(2 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%227 : i64)
  ^bb16(%230: i64):  // 2 preds: ^bb15, ^bb17
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %232 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.add %215, %220  : i64
    %234 = llvm.add %233, %225  : i64
    %235 = llvm.add %234, %22  : i64
    %236 = llvm.getelementptr %232[%235] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %237 = llvm.load %236 : !llvm.ptr<i32>
    %238 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.getelementptr %238[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %240 = llvm.load %239 : !llvm.ptr<i32>
    %241 = llvm.sub %237, %240  : i32
    %242 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mul %215, %243  : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mul %220, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mul %225, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.add %250, %230  : i64
    %252 = llvm.getelementptr %242[%251] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %241, %252 : !llvm.ptr<i32>
    %253 = llvm.add %230, %229  : i64
    llvm.br ^bb16(%253 : i64)
  ^bb18:  // pred: ^bb16
    %254 = llvm.add %225, %224  : i64
    llvm.br ^bb14(%254 : i64)
  ^bb19:  // pred: ^bb14
    %255 = llvm.add %220, %219  : i64
    llvm.br ^bb12(%255 : i64)
  ^bb20:  // pred: ^bb12
    %256 = llvm.add %215, %214  : i64
    llvm.br ^bb10(%256 : i64)
  ^bb21:  // pred: ^bb10
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.null : !llvm.ptr<i64>
    %260 = llvm.getelementptr %259[%257] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %261 = llvm.ptrtoint %260 : !llvm.ptr<i64> to i64
    %262 = llvm.mlir.constant(16 : index) : i64
    %263 = llvm.add %261, %262  : i64
    %264 = llvm.call @malloc(%263) : (i64) -> !llvm.ptr<i8>
    %265 = llvm.bitcast %264 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %266 = llvm.ptrtoint %265 : !llvm.ptr<i64> to i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.sub %262, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.urem %269, %262  : i64
    %271 = llvm.sub %269, %270  : i64
    %272 = llvm.inttoptr %271 : i64 to !llvm.ptr<i64>
    %273 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %274 = llvm.insertvalue %265, %273[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.insertvalue %272, %274[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.insertvalue %276, %275[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.insertvalue %257, %277[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.insertvalue %258, %278[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(4 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%280 : i64)
  ^bb22(%283: i64):  // 2 preds: ^bb21, ^bb23
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %285 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.getelementptr %285[%283] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %20, %286 : !llvm.ptr<i64>
    %287 = llvm.add %283, %282  : i64
    llvm.br ^bb22(%287 : i64)
  ^bb24:  // pred: ^bb22
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.null : !llvm.ptr<i64>
    %291 = llvm.getelementptr %290[%288] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %292 = llvm.ptrtoint %291 : !llvm.ptr<i64> to i64
    %293 = llvm.mlir.constant(16 : index) : i64
    %294 = llvm.add %292, %293  : i64
    %295 = llvm.call @malloc(%294) : (i64) -> !llvm.ptr<i8>
    %296 = llvm.bitcast %295 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %297 = llvm.ptrtoint %296 : !llvm.ptr<i64> to i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.sub %293, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.urem %300, %293  : i64
    %302 = llvm.sub %300, %301  : i64
    %303 = llvm.inttoptr %302 : i64 to !llvm.ptr<i64>
    %304 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %305 = llvm.insertvalue %296, %304[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %303, %305[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.insertvalue %307, %306[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.insertvalue %288, %308[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.insertvalue %289, %309[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%311 : i64)
  ^bb25(%314: i64):  // 2 preds: ^bb24, ^bb26
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %316 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.getelementptr %316[%314] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %318 = llvm.load %317 : !llvm.ptr<i64>
    %319 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %320 = llvm.load %319 : !llvm.ptr<i64>
    %321 = llvm.mul %318, %320  : i64
    %322 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.getelementptr %322[%314] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %321, %323 : !llvm.ptr<i64>
    %324 = llvm.add %314, %313  : i64
    llvm.br ^bb25(%324 : i64)
  ^bb27:  // pred: ^bb25
    %325 = llvm.mlir.constant(4 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.null : !llvm.ptr<i1>
    %328 = llvm.getelementptr %327[%325] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %329 = llvm.ptrtoint %328 : !llvm.ptr<i1> to i64
    %330 = llvm.mlir.constant(16 : index) : i64
    %331 = llvm.add %329, %330  : i64
    %332 = llvm.call @malloc(%331) : (i64) -> !llvm.ptr<i8>
    %333 = llvm.bitcast %332 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %334 = llvm.ptrtoint %333 : !llvm.ptr<i1> to i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.sub %330, %335  : i64
    %337 = llvm.add %334, %336  : i64
    %338 = llvm.urem %337, %330  : i64
    %339 = llvm.sub %337, %338  : i64
    %340 = llvm.inttoptr %339 : i64 to !llvm.ptr<i1>
    %341 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %342 = llvm.insertvalue %333, %341[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.insertvalue %340, %342[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.insertvalue %344, %343[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %346 = llvm.insertvalue %325, %345[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %347 = llvm.insertvalue %326, %346[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(4 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%348 : i64)
  ^bb28(%351: i64):  // 2 preds: ^bb27, ^bb29
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %353 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.getelementptr %353[%351] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %355 = llvm.load %354 : !llvm.ptr<i64>
    %356 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.getelementptr %356[%351] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %358 = llvm.load %357 : !llvm.ptr<i64>
    %359 = llvm.icmp "eq" %355, %358 : i64
    %360 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.getelementptr %360[%351] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %359, %361 : !llvm.ptr<i1>
    %362 = llvm.add %351, %350  : i64
    llvm.br ^bb28(%362 : i64)
  ^bb30:  // pred: ^bb28
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.null : !llvm.ptr<i64>
    %366 = llvm.getelementptr %365[%363] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %367 = llvm.ptrtoint %366 : !llvm.ptr<i64> to i64
    %368 = llvm.mlir.constant(16 : index) : i64
    %369 = llvm.add %367, %368  : i64
    %370 = llvm.call @malloc(%369) : (i64) -> !llvm.ptr<i8>
    %371 = llvm.bitcast %370 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %372 = llvm.ptrtoint %371 : !llvm.ptr<i64> to i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.sub %368, %373  : i64
    %375 = llvm.add %372, %374  : i64
    %376 = llvm.urem %375, %368  : i64
    %377 = llvm.sub %375, %376  : i64
    %378 = llvm.inttoptr %377 : i64 to !llvm.ptr<i64>
    %379 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %380 = llvm.insertvalue %371, %379[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.insertvalue %378, %380[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.insertvalue %382, %381[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %384 = llvm.insertvalue %363, %383[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.insertvalue %364, %384[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.mlir.constant(0 : index) : i64
    %387 = llvm.mlir.constant(4 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%386 : i64)
  ^bb31(%389: i64):  // 2 preds: ^bb30, ^bb32
    %390 = llvm.icmp "slt" %389, %387 : i64
    llvm.cond_br %390, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %391 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.getelementptr %391[%389] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %393 = llvm.load %392 : !llvm.ptr<i1>
    %394 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.getelementptr %394[%389] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %396 = llvm.load %395 : !llvm.ptr<i64>
    %397 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.getelementptr %397[%389] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %399 = llvm.load %398 : !llvm.ptr<i64>
    %400 = llvm.select %393, %396, %399 : i1, i64
    %401 = llvm.extractvalue %385[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.getelementptr %401[%389] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %400, %402 : !llvm.ptr<i64>
    %403 = llvm.add %389, %388  : i64
    llvm.br ^bb31(%403 : i64)
  ^bb33:  // pred: ^bb31
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(2 : index) : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.null : !llvm.ptr<i32>
    %413 = llvm.getelementptr %412[%411] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %414 = llvm.ptrtoint %413 : !llvm.ptr<i32> to i64
    %415 = llvm.mlir.constant(16 : index) : i64
    %416 = llvm.add %414, %415  : i64
    %417 = llvm.call @malloc(%416) : (i64) -> !llvm.ptr<i8>
    %418 = llvm.bitcast %417 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %419 = llvm.ptrtoint %418 : !llvm.ptr<i32> to i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.sub %415, %420  : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.urem %422, %415  : i64
    %424 = llvm.sub %422, %423  : i64
    %425 = llvm.inttoptr %424 : i64 to !llvm.ptr<i32>
    %426 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %427 = llvm.insertvalue %418, %426[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %425, %427[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.insertvalue %429, %428[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %404, %430[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %405, %431[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %406, %432[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %407, %433[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %410, %434[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %409, %435[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %407, %436[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %408, %437[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%439 : i64)
  ^bb34(%442: i64):  // 2 preds: ^bb33, ^bb44
    %443 = llvm.icmp "slt" %442, %440 : i64
    llvm.cond_br %443, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%444 : i64)
  ^bb36(%447: i64):  // 2 preds: ^bb35, ^bb43
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%449 : i64)
  ^bb38(%452: i64):  // 2 preds: ^bb37, ^bb42
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%454 : i64)
  ^bb40(%457: i64):  // 2 preds: ^bb39, ^bb41
    %458 = llvm.icmp "slt" %457, %455 : i64
    llvm.cond_br %458, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %459 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.mlir.constant(2 : index) : i64
    %461 = llvm.mul %22, %460  : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mul %22, %462  : i64
    %464 = llvm.add %461, %463  : i64
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mul %22, %465  : i64
    %467 = llvm.add %464, %466  : i64
    %468 = llvm.add %467, %457  : i64
    %469 = llvm.getelementptr %459[%468] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %470 = llvm.load %469 : !llvm.ptr<i32>
    %471 = llvm.extractvalue %438[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mul %442, %472  : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mul %447, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.mlir.constant(2 : index) : i64
    %478 = llvm.mul %452, %477  : i64
    %479 = llvm.add %476, %478  : i64
    %480 = llvm.add %479, %457  : i64
    %481 = llvm.getelementptr %471[%480] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %470, %481 : !llvm.ptr<i32>
    %482 = llvm.add %457, %456  : i64
    llvm.br ^bb40(%482 : i64)
  ^bb42:  // pred: ^bb40
    %483 = llvm.add %452, %451  : i64
    llvm.br ^bb38(%483 : i64)
  ^bb43:  // pred: ^bb38
    %484 = llvm.add %447, %446  : i64
    llvm.br ^bb36(%484 : i64)
  ^bb44:  // pred: ^bb36
    %485 = llvm.add %442, %441  : i64
    llvm.br ^bb34(%485 : i64)
  ^bb45:  // pred: ^bb34
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.mlir.constant(2 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.constant(2 : index) : i64
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mlir.constant(2 : index) : i64
    %494 = llvm.mlir.null : !llvm.ptr<i1>
    %495 = llvm.getelementptr %494[%493] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %496 = llvm.ptrtoint %495 : !llvm.ptr<i1> to i64
    %497 = llvm.mlir.constant(16 : index) : i64
    %498 = llvm.add %496, %497  : i64
    %499 = llvm.call @malloc(%498) : (i64) -> !llvm.ptr<i8>
    %500 = llvm.bitcast %499 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %501 = llvm.ptrtoint %500 : !llvm.ptr<i1> to i64
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.sub %497, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.urem %504, %497  : i64
    %506 = llvm.sub %504, %505  : i64
    %507 = llvm.inttoptr %506 : i64 to !llvm.ptr<i1>
    %508 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %509 = llvm.insertvalue %500, %508[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.insertvalue %507, %509[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.insertvalue %511, %510[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.insertvalue %486, %512[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.insertvalue %487, %513[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.insertvalue %488, %514[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.insertvalue %489, %515[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %492, %516[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.insertvalue %491, %517[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.insertvalue %489, %518[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.insertvalue %490, %519[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%521 : i64)
  ^bb46(%524: i64):  // 2 preds: ^bb45, ^bb56
    %525 = llvm.icmp "slt" %524, %522 : i64
    llvm.cond_br %525, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%526 : i64)
  ^bb48(%529: i64):  // 2 preds: ^bb47, ^bb55
    %530 = llvm.icmp "slt" %529, %527 : i64
    llvm.cond_br %530, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%531 : i64)
  ^bb50(%534: i64):  // 2 preds: ^bb49, ^bb54
    %535 = llvm.icmp "slt" %534, %532 : i64
    llvm.cond_br %535, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %536 = llvm.mlir.constant(0 : index) : i64
    %537 = llvm.mlir.constant(2 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%536 : i64)
  ^bb52(%539: i64):  // 2 preds: ^bb51, ^bb53
    %540 = llvm.icmp "slt" %539, %537 : i64
    llvm.cond_br %540, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %541 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.mlir.constant(2 : index) : i64
    %543 = llvm.mul %524, %542  : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mul %529, %544  : i64
    %546 = llvm.add %543, %545  : i64
    %547 = llvm.mlir.constant(2 : index) : i64
    %548 = llvm.mul %534, %547  : i64
    %549 = llvm.add %546, %548  : i64
    %550 = llvm.add %549, %539  : i64
    %551 = llvm.getelementptr %541[%550] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %552 = llvm.load %551 : !llvm.ptr<i32>
    %553 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %554 = llvm.mlir.constant(2 : index) : i64
    %555 = llvm.mul %524, %554  : i64
    %556 = llvm.mlir.constant(2 : index) : i64
    %557 = llvm.mul %529, %556  : i64
    %558 = llvm.add %555, %557  : i64
    %559 = llvm.mlir.constant(2 : index) : i64
    %560 = llvm.mul %534, %559  : i64
    %561 = llvm.add %558, %560  : i64
    %562 = llvm.add %561, %539  : i64
    %563 = llvm.getelementptr %553[%562] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %564 = llvm.load %563 : !llvm.ptr<i32>
    %565 = llvm.icmp "eq" %552, %564 : i32
    %566 = llvm.extractvalue %520[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.mlir.constant(2 : index) : i64
    %568 = llvm.mul %524, %567  : i64
    %569 = llvm.mlir.constant(2 : index) : i64
    %570 = llvm.mul %529, %569  : i64
    %571 = llvm.add %568, %570  : i64
    %572 = llvm.mlir.constant(2 : index) : i64
    %573 = llvm.mul %534, %572  : i64
    %574 = llvm.add %571, %573  : i64
    %575 = llvm.add %574, %539  : i64
    %576 = llvm.getelementptr %566[%575] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %565, %576 : !llvm.ptr<i1>
    %577 = llvm.add %539, %538  : i64
    llvm.br ^bb52(%577 : i64)
  ^bb54:  // pred: ^bb52
    %578 = llvm.add %534, %533  : i64
    llvm.br ^bb50(%578 : i64)
  ^bb55:  // pred: ^bb50
    %579 = llvm.add %529, %528  : i64
    llvm.br ^bb48(%579 : i64)
  ^bb56:  // pred: ^bb48
    %580 = llvm.add %524, %523  : i64
    llvm.br ^bb46(%580 : i64)
  ^bb57:  // pred: ^bb46
    %581 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %582 = llvm.insertvalue %438, %581[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %583 = llvm.insertvalue %520, %582[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %583 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %8[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %8[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %8[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %20, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %29, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.getelementptr %0[%30] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<i8>>
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %41[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %42[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(3 : i64) : i64
    %65 = llvm.getelementptr %41[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %42[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %70, %33 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %71 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %72 = llvm.extractvalue %71[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %73 = llvm.extractvalue %71[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %74 = llvm.mlir.constant(2 : i64) : i64
    %75 = llvm.mlir.constant(16 : i64) : i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %72[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %72[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %72[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %72[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %72[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.extractvalue %72[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %86[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %72[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(0 : i64) : i64
    %109 = llvm.getelementptr %77[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.mlir.constant(4 : i64) : i64
    %111 = llvm.call @omTensorCreateUntyped(%110) : (i64) -> !llvm.ptr<i8>
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.extractvalue %73[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.bitcast %113 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %115 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%111, %112, %114, %116) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %117 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%111, %117) : (!llvm.ptr<i8>, i64) -> ()
    %118 = llvm.call @omTensorGetShape(%111) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %119 = llvm.call @omTensorGetStrides(%111) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.mlir.constant(0 : i64) : i64
    %121 = llvm.extractvalue %73[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %118[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %73[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %119[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %73[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %118[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %73[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %119[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(2 : i64) : i64
    %131 = llvm.extractvalue %73[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %118[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %73[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %119[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(3 : i64) : i64
    %136 = llvm.extractvalue %73[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %118[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %73[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %119[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(1 : i64) : i64
    %141 = llvm.getelementptr %77[%140] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %111, %141 : !llvm.ptr<ptr<i8>>
    %142 = llvm.call @omTensorListCreate(%77, %74, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %142 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<134 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<134 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

