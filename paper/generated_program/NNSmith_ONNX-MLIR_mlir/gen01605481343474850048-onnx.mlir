module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(-2147483648 : i32) : i32
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(1 : i64) : i64
    %16 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(4 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(4 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.null : !llvm.ptr<i64>
    %48 = llvm.getelementptr %47[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.ptrtoint %48 : !llvm.ptr<i64> to i64
    %50 = llvm.mlir.constant(16 : index) : i64
    %51 = llvm.add %49, %50  : i64
    %52 = llvm.call @malloc(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.bitcast %52 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %54 = llvm.ptrtoint %53 : !llvm.ptr<i64> to i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.sub %50, %55  : i64
    %57 = llvm.add %54, %56  : i64
    %58 = llvm.urem %57, %50  : i64
    %59 = llvm.sub %57, %58  : i64
    %60 = llvm.inttoptr %59 : i64 to !llvm.ptr<i64>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %62 = llvm.insertvalue %53, %61[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %45, %65[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %46, %66[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.mlir.constant(4 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%68 : i64)
  ^bb1(%71: i64):  // 2 preds: ^bb0, ^bb2
    %72 = llvm.icmp "slt" %71, %69 : i64
    llvm.cond_br %72, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %73 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.getelementptr %73[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %15, %74 : !llvm.ptr<i64>
    %75 = llvm.add %71, %70  : i64
    llvm.br ^bb1(%75 : i64)
  ^bb3:  // pred: ^bb1
    %76 = llvm.mlir.constant(4 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.null : !llvm.ptr<i64>
    %79 = llvm.getelementptr %78[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.ptrtoint %79 : !llvm.ptr<i64> to i64
    %81 = llvm.mlir.constant(16 : index) : i64
    %82 = llvm.add %80, %81  : i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %85 = llvm.ptrtoint %84 : !llvm.ptr<i64> to i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.sub %81, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.urem %88, %81  : i64
    %90 = llvm.sub %88, %89  : i64
    %91 = llvm.inttoptr %90 : i64 to !llvm.ptr<i64>
    %92 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %93 = llvm.insertvalue %84, %92[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.insertvalue %91, %93[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.insertvalue %95, %94[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %76, %96[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.insertvalue %77, %97[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(4 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%99 : i64)
  ^bb4(%102: i64):  // 2 preds: ^bb3, ^bb5
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %104 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.getelementptr %104[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %106 = llvm.load %105 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %108 = llvm.load %107 : !llvm.ptr<i64>
    %109 = llvm.mul %106, %108  : i64
    %110 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.getelementptr %110[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %111 : !llvm.ptr<i64>
    %112 = llvm.add %102, %101  : i64
    llvm.br ^bb4(%112 : i64)
  ^bb6:  // pred: ^bb4
    %113 = llvm.mlir.constant(4 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.null : !llvm.ptr<i1>
    %116 = llvm.getelementptr %115[%113] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<i1> to i64
    %118 = llvm.mlir.constant(16 : index) : i64
    %119 = llvm.add %117, %118  : i64
    %120 = llvm.call @malloc(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.bitcast %120 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %122 = llvm.ptrtoint %121 : !llvm.ptr<i1> to i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.sub %118, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.urem %125, %118  : i64
    %127 = llvm.sub %125, %126  : i64
    %128 = llvm.inttoptr %127 : i64 to !llvm.ptr<i1>
    %129 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %130 = llvm.insertvalue %121, %129[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %128, %130[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.insertvalue %132, %131[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %113, %133[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %114, %134[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(4 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%136 : i64)
  ^bb7(%139: i64):  // 2 preds: ^bb6, ^bb8
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %141 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.getelementptr %141[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %143 = llvm.load %142 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.getelementptr %144[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %146 = llvm.load %145 : !llvm.ptr<i64>
    %147 = llvm.icmp "eq" %143, %146 : i64
    %148 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.getelementptr %148[%139] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %147, %149 : !llvm.ptr<i1>
    %150 = llvm.add %139, %138  : i64
    llvm.br ^bb7(%150 : i64)
  ^bb9:  // pred: ^bb7
    %151 = llvm.mlir.constant(4 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.null : !llvm.ptr<i64>
    %154 = llvm.getelementptr %153[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<i64> to i64
    %156 = llvm.mlir.constant(16 : index) : i64
    %157 = llvm.add %155, %156  : i64
    %158 = llvm.call @malloc(%157) : (i64) -> !llvm.ptr<i8>
    %159 = llvm.bitcast %158 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %160 = llvm.ptrtoint %159 : !llvm.ptr<i64> to i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.sub %156, %161  : i64
    %163 = llvm.add %160, %162  : i64
    %164 = llvm.urem %163, %156  : i64
    %165 = llvm.sub %163, %164  : i64
    %166 = llvm.inttoptr %165 : i64 to !llvm.ptr<i64>
    %167 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %168 = llvm.insertvalue %159, %167[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.insertvalue %166, %168[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.insertvalue %170, %169[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.insertvalue %151, %171[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.insertvalue %152, %172[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(4 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%174 : i64)
  ^bb10(%177: i64):  // 2 preds: ^bb9, ^bb11
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %179 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.getelementptr %179[%177] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %181 = llvm.load %180 : !llvm.ptr<i1>
    %182 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.getelementptr %182[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %184 = llvm.load %183 : !llvm.ptr<i64>
    %185 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.getelementptr %185[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %187 = llvm.load %186 : !llvm.ptr<i64>
    %188 = llvm.select %181, %184, %187 : i1, i64
    %189 = llvm.extractvalue %173[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.getelementptr %189[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %190 : !llvm.ptr<i64>
    %191 = llvm.add %177, %176  : i64
    llvm.br ^bb10(%191 : i64)
  ^bb12:  // pred: ^bb10
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(2 : index) : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mlir.null : !llvm.ptr<i32>
    %200 = llvm.getelementptr %199[%198] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %201 = llvm.ptrtoint %200 : !llvm.ptr<i32> to i64
    %202 = llvm.mlir.constant(16 : index) : i64
    %203 = llvm.add %201, %202  : i64
    %204 = llvm.call @malloc(%203) : (i64) -> !llvm.ptr<i8>
    %205 = llvm.bitcast %204 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %206 = llvm.ptrtoint %205 : !llvm.ptr<i32> to i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.sub %202, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.urem %209, %202  : i64
    %211 = llvm.sub %209, %210  : i64
    %212 = llvm.inttoptr %211 : i64 to !llvm.ptr<i32>
    %213 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %214 = llvm.insertvalue %205, %213[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %212, %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.insertvalue %216, %215[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %192, %217[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %193, %218[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %194, %219[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %195, %220[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %197, %221[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %194, %222[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %195, %223[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %196, %224[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%226 : i64)
  ^bb13(%229: i64):  // 2 preds: ^bb12, ^bb23
    %230 = llvm.icmp "slt" %229, %227 : i64
    llvm.cond_br %230, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%231 : i64)
  ^bb15(%234: i64):  // 2 preds: ^bb14, ^bb22
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%236 : i64)
  ^bb17(%239: i64):  // 2 preds: ^bb16, ^bb21
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%241 : i64)
  ^bb19(%244: i64):  // 2 preds: ^bb18, ^bb20
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %246 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mul %14, %247  : i64
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mul %14, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.add %251, %239  : i64
    %253 = llvm.add %252, %14  : i64
    %254 = llvm.getelementptr %246[%253] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %255 = llvm.load %254 : !llvm.ptr<i32>
    %256 = llvm.extractvalue %225[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mul %229, %257  : i64
    %259 = llvm.mlir.constant(2 : index) : i64
    %260 = llvm.mul %234, %259  : i64
    %261 = llvm.add %258, %260  : i64
    %262 = llvm.add %261, %239  : i64
    %263 = llvm.add %262, %244  : i64
    %264 = llvm.getelementptr %256[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %255, %264 : !llvm.ptr<i32>
    %265 = llvm.add %244, %243  : i64
    llvm.br ^bb19(%265 : i64)
  ^bb21:  // pred: ^bb19
    %266 = llvm.add %239, %238  : i64
    llvm.br ^bb17(%266 : i64)
  ^bb22:  // pred: ^bb17
    %267 = llvm.add %234, %233  : i64
    llvm.br ^bb15(%267 : i64)
  ^bb23:  // pred: ^bb15
    %268 = llvm.add %229, %228  : i64
    llvm.br ^bb13(%268 : i64)
  ^bb24:  // pred: ^bb13
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mlir.null : !llvm.ptr<i32>
    %276 = llvm.getelementptr %275[%274] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %277 = llvm.ptrtoint %276 : !llvm.ptr<i32> to i64
    %278 = llvm.mlir.constant(16 : index) : i64
    %279 = llvm.add %277, %278  : i64
    %280 = llvm.call @malloc(%279) : (i64) -> !llvm.ptr<i8>
    %281 = llvm.bitcast %280 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %282 = llvm.ptrtoint %281 : !llvm.ptr<i32> to i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.sub %278, %283  : i64
    %285 = llvm.add %282, %284  : i64
    %286 = llvm.urem %285, %278  : i64
    %287 = llvm.sub %285, %286  : i64
    %288 = llvm.inttoptr %287 : i64 to !llvm.ptr<i32>
    %289 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %290 = llvm.insertvalue %281, %289[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %291 = llvm.insertvalue %288, %290[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.insertvalue %292, %291[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %294 = llvm.insertvalue %269, %293[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %295 = llvm.insertvalue %270, %294[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %296 = llvm.insertvalue %271, %295[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %297 = llvm.insertvalue %273, %296[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %298 = llvm.insertvalue %271, %297[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %299 = llvm.insertvalue %272, %298[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%300 : i64)
  ^bb25(%303: i64):  // 2 preds: ^bb24, ^bb32
    %304 = llvm.icmp "slt" %303, %301 : i64
    llvm.cond_br %304, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%305 : i64)
  ^bb27(%308: i64):  // 2 preds: ^bb26, ^bb31
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%310 : i64)
  ^bb29(%313: i64):  // 2 preds: ^bb28, ^bb30
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %315 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %316 = llvm.mlir.constant(2 : index) : i64
    %317 = llvm.mul %303, %316  : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mul %308, %318  : i64
    %320 = llvm.add %317, %319  : i64
    %321 = llvm.add %320, %313  : i64
    %322 = llvm.getelementptr %315[%321] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %13, %322 : !llvm.ptr<i32>
    %323 = llvm.add %313, %312  : i64
    llvm.br ^bb29(%323 : i64)
  ^bb31:  // pred: ^bb29
    %324 = llvm.add %308, %307  : i64
    llvm.br ^bb27(%324 : i64)
  ^bb32:  // pred: ^bb27
    %325 = llvm.add %303, %302  : i64
    llvm.br ^bb25(%325 : i64)
  ^bb33:  // pred: ^bb25
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%326 : i64)
  ^bb34(%329: i64):  // 2 preds: ^bb33, ^bb44
    %330 = llvm.icmp "slt" %329, %327 : i64
    llvm.cond_br %330, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%331 : i64)
  ^bb36(%334: i64):  // 2 preds: ^bb35, ^bb43
    %335 = llvm.icmp "slt" %334, %332 : i64
    llvm.cond_br %335, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%336 : i64)
  ^bb38(%339: i64):  // 2 preds: ^bb37, ^bb42
    %340 = llvm.icmp "slt" %339, %337 : i64
    llvm.cond_br %340, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%341 : i64)
  ^bb40(%344: i64):  // 2 preds: ^bb39, ^bb41
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %346 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mul %329, %347  : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mul %334, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.add %351, %339  : i64
    %353 = llvm.add %352, %344  : i64
    %354 = llvm.getelementptr %346[%353] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %355 = llvm.load %354 : !llvm.ptr<i32>
    %356 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mul %329, %357  : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mul %334, %359  : i64
    %361 = llvm.add %358, %360  : i64
    %362 = llvm.add %361, %339  : i64
    %363 = llvm.getelementptr %356[%362] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %364 = llvm.load %363 : !llvm.ptr<i32>
    %365 = llvm.icmp "sgt" %364, %355 : i32
    %366 = llvm.select %365, %364, %355 : i1, i32
    %367 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mul %329, %368  : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mul %334, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.add %372, %339  : i64
    %374 = llvm.getelementptr %367[%373] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %366, %374 : !llvm.ptr<i32>
    %375 = llvm.add %344, %343  : i64
    llvm.br ^bb40(%375 : i64)
  ^bb42:  // pred: ^bb40
    %376 = llvm.add %339, %338  : i64
    llvm.br ^bb38(%376 : i64)
  ^bb43:  // pred: ^bb38
    %377 = llvm.add %334, %333  : i64
    llvm.br ^bb36(%377 : i64)
  ^bb44:  // pred: ^bb36
    %378 = llvm.add %329, %328  : i64
    llvm.br ^bb34(%378 : i64)
  ^bb45:  // pred: ^bb34
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(4 : index) : i64
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mlir.constant(4 : index) : i64
    %387 = llvm.mlir.null : !llvm.ptr<i32>
    %388 = llvm.getelementptr %387[%386] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %389 = llvm.ptrtoint %388 : !llvm.ptr<i32> to i64
    %390 = llvm.mlir.constant(16 : index) : i64
    %391 = llvm.add %389, %390  : i64
    %392 = llvm.call @malloc(%391) : (i64) -> !llvm.ptr<i8>
    %393 = llvm.bitcast %392 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %394 = llvm.ptrtoint %393 : !llvm.ptr<i32> to i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.sub %390, %395  : i64
    %397 = llvm.add %394, %396  : i64
    %398 = llvm.urem %397, %390  : i64
    %399 = llvm.sub %397, %398  : i64
    %400 = llvm.inttoptr %399 : i64 to !llvm.ptr<i32>
    %401 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %402 = llvm.insertvalue %393, %401[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %400, %402[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.insertvalue %404, %403[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %379, %405[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %380, %406[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %381, %407[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %382, %408[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %385, %409[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %384, %410[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %382, %411[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %383, %412[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%414 : i64)
  ^bb46(%417: i64):  // 2 preds: ^bb45, ^bb56
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%419 : i64)
  ^bb48(%422: i64):  // 2 preds: ^bb47, ^bb55
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%424 : i64)
  ^bb50(%427: i64):  // 2 preds: ^bb49, ^bb54
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%429 : i64)
  ^bb52(%432: i64):  // 2 preds: ^bb51, ^bb53
    %433 = llvm.icmp "slt" %432, %430 : i64
    llvm.cond_br %433, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %434 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.mlir.constant(2 : index) : i64
    %436 = llvm.mul %417, %435  : i64
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mul %422, %437  : i64
    %439 = llvm.add %436, %438  : i64
    %440 = llvm.add %439, %427  : i64
    %441 = llvm.add %440, %14  : i64
    %442 = llvm.getelementptr %434[%441] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %443 = llvm.load %442 : !llvm.ptr<i32>
    %444 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mul %422, %445  : i64
    %447 = llvm.mlir.constant(2 : index) : i64
    %448 = llvm.mul %14, %447  : i64
    %449 = llvm.add %446, %448  : i64
    %450 = llvm.add %449, %432  : i64
    %451 = llvm.getelementptr %444[%450] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %452 = llvm.load %451 : !llvm.ptr<i32>
    %453 = llvm.add %443, %452  : i32
    %454 = llvm.extractvalue %413[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.mlir.constant(4 : index) : i64
    %456 = llvm.mul %417, %455  : i64
    %457 = llvm.mlir.constant(4 : index) : i64
    %458 = llvm.mul %422, %457  : i64
    %459 = llvm.add %456, %458  : i64
    %460 = llvm.mlir.constant(2 : index) : i64
    %461 = llvm.mul %427, %460  : i64
    %462 = llvm.add %459, %461  : i64
    %463 = llvm.add %462, %432  : i64
    %464 = llvm.getelementptr %454[%463] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %453, %464 : !llvm.ptr<i32>
    %465 = llvm.add %432, %431  : i64
    llvm.br ^bb52(%465 : i64)
  ^bb54:  // pred: ^bb52
    %466 = llvm.add %427, %426  : i64
    llvm.br ^bb50(%466 : i64)
  ^bb55:  // pred: ^bb50
    %467 = llvm.add %422, %421  : i64
    llvm.br ^bb48(%467 : i64)
  ^bb56:  // pred: ^bb48
    %468 = llvm.add %417, %416  : i64
    llvm.br ^bb46(%468 : i64)
  ^bb57:  // pred: ^bb46
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mlir.null : !llvm.ptr<i32>
    %476 = llvm.getelementptr %475[%474] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %477 = llvm.ptrtoint %476 : !llvm.ptr<i32> to i64
    %478 = llvm.mlir.constant(16 : index) : i64
    %479 = llvm.add %477, %478  : i64
    %480 = llvm.call @malloc(%479) : (i64) -> !llvm.ptr<i8>
    %481 = llvm.bitcast %480 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %482 = llvm.ptrtoint %481 : !llvm.ptr<i32> to i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.sub %478, %483  : i64
    %485 = llvm.add %482, %484  : i64
    %486 = llvm.urem %485, %478  : i64
    %487 = llvm.sub %485, %486  : i64
    %488 = llvm.inttoptr %487 : i64 to !llvm.ptr<i32>
    %489 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %490 = llvm.insertvalue %481, %489[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %491 = llvm.insertvalue %488, %490[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.insertvalue %492, %491[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %494 = llvm.insertvalue %469, %493[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %495 = llvm.insertvalue %470, %494[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %496 = llvm.insertvalue %471, %495[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %497 = llvm.insertvalue %473, %496[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %498 = llvm.insertvalue %471, %497[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %499 = llvm.insertvalue %472, %498[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%500 : i64)
  ^bb58(%503: i64):  // 2 preds: ^bb57, ^bb65
    %504 = llvm.icmp "slt" %503, %501 : i64
    llvm.cond_br %504, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%505 : i64)
  ^bb60(%508: i64):  // 2 preds: ^bb59, ^bb64
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%510 : i64)
  ^bb62(%513: i64):  // 2 preds: ^bb61, ^bb63
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %515 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %516 = llvm.mlir.constant(2 : index) : i64
    %517 = llvm.mul %503, %516  : i64
    %518 = llvm.mlir.constant(2 : index) : i64
    %519 = llvm.mul %508, %518  : i64
    %520 = llvm.add %517, %519  : i64
    %521 = llvm.add %520, %513  : i64
    %522 = llvm.getelementptr %515[%521] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %523 = llvm.load %522 : !llvm.ptr<i32>
    %524 = llvm.sub %12, %523  : i32
    %525 = llvm.extractvalue %499[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %526 = llvm.mlir.constant(2 : index) : i64
    %527 = llvm.mul %503, %526  : i64
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mul %508, %528  : i64
    %530 = llvm.add %527, %529  : i64
    %531 = llvm.add %530, %513  : i64
    %532 = llvm.getelementptr %525[%531] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %524, %532 : !llvm.ptr<i32>
    %533 = llvm.add %513, %512  : i64
    llvm.br ^bb62(%533 : i64)
  ^bb64:  // pred: ^bb62
    %534 = llvm.add %508, %507  : i64
    llvm.br ^bb60(%534 : i64)
  ^bb65:  // pred: ^bb60
    %535 = llvm.add %503, %502  : i64
    llvm.br ^bb58(%535 : i64)
  ^bb66:  // pred: ^bb58
    %536 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %537 = llvm.insertvalue %225, %536[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %538 = llvm.insertvalue %413, %537[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %539 = llvm.insertvalue %499, %538[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %539 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(3 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(2 : i64) : i64
    %142 = llvm.getelementptr %51[%141] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %142 : !llvm.ptr<ptr<i8>>
    %143 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %143 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<207 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<207 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

