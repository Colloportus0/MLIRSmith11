module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 4 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [8 , 4 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 4 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 4 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[2, 2, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[2, 2, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v3_0"]} {
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
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(1 : i64) : i64
    %16 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
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
    %27 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
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
    %192 = llvm.extractvalue %173[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.getelementptr %192[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %194 = llvm.load %193 : !llvm.ptr<i64>
    %195 = llvm.mlir.constant(2 : index) : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mlir.constant(4 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mul %194, %197  : i64
    %200 = llvm.mul %199, %196  : i64
    %201 = llvm.mul %200, %195  : i64
    %202 = llvm.mlir.null : !llvm.ptr<i32>
    %203 = llvm.getelementptr %202[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %204 = llvm.ptrtoint %203 : !llvm.ptr<i32> to i64
    %205 = llvm.mlir.constant(16 : index) : i64
    %206 = llvm.add %204, %205  : i64
    %207 = llvm.call @malloc(%206) : (i64) -> !llvm.ptr<i8>
    %208 = llvm.bitcast %207 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %209 = llvm.ptrtoint %208 : !llvm.ptr<i32> to i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.sub %205, %210  : i64
    %212 = llvm.add %209, %211  : i64
    %213 = llvm.urem %212, %205  : i64
    %214 = llvm.sub %212, %213  : i64
    %215 = llvm.inttoptr %214 : i64 to !llvm.ptr<i32>
    %216 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %217 = llvm.insertvalue %208, %216[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %215, %217[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.insertvalue %219, %218[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %195, %220[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %196, %221[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %197, %222[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %194, %223[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %200, %224[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %199, %225[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %194, %226[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %198, %227[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%229 : i64)
  ^bb13(%232: i64):  // 2 preds: ^bb12, ^bb23
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%234 : i64)
  ^bb15(%237: i64):  // 2 preds: ^bb14, ^bb22
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(4 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%239 : i64)
  ^bb17(%242: i64):  // 2 preds: ^bb16, ^bb21
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%244 : i64)
  ^bb19(%246: i64):  // 2 preds: ^bb18, ^bb20
    %247 = llvm.icmp "slt" %246, %194 : i64
    llvm.cond_br %247, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %248 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.mlir.constant(8 : index) : i64
    %250 = llvm.mul %232, %249  : i64
    %251 = llvm.mlir.constant(4 : index) : i64
    %252 = llvm.mul %237, %251  : i64
    %253 = llvm.add %250, %252  : i64
    %254 = llvm.add %253, %242  : i64
    %255 = llvm.add %254, %14  : i64
    %256 = llvm.getelementptr %248[%255] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %257 = llvm.load %256 : !llvm.ptr<i32>
    %258 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.extractvalue %228[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.mul %232, %259  : i64
    %261 = llvm.extractvalue %228[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.mul %237, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.extractvalue %228[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mul %242, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.add %266, %246  : i64
    %268 = llvm.getelementptr %258[%267] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %257, %268 : !llvm.ptr<i32>
    %269 = llvm.add %246, %245  : i64
    llvm.br ^bb19(%269 : i64)
  ^bb21:  // pred: ^bb19
    %270 = llvm.add %242, %241  : i64
    llvm.br ^bb17(%270 : i64)
  ^bb22:  // pred: ^bb17
    %271 = llvm.add %237, %236  : i64
    llvm.br ^bb15(%271 : i64)
  ^bb23:  // pred: ^bb15
    %272 = llvm.add %232, %231  : i64
    llvm.br ^bb13(%272 : i64)
  ^bb24:  // pred: ^bb13
    %273 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %274 = llvm.extractvalue %228[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %274, %273[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %277 = llvm.insertvalue %275, %276[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.insertvalue %278, %277[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %280 = llvm.mlir.constant(2 : index) : i64
    %281 = llvm.insertvalue %280, %279[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %282 = llvm.mlir.constant(8 : index) : i64
    %283 = llvm.insertvalue %282, %281[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %284 = llvm.mlir.constant(4 : index) : i64
    %285 = llvm.insertvalue %284, %283[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.insertvalue %286, %285[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.insertvalue %288, %287[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.insertvalue %290, %289[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %292 = llvm.mlir.constant(8 : index) : i64
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(8 : index) : i64
    %297 = llvm.mlir.constant(64 : index) : i64
    %298 = llvm.mlir.null : !llvm.ptr<i32>
    %299 = llvm.getelementptr %298[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<i32> to i64
    %301 = llvm.mlir.constant(16 : index) : i64
    %302 = llvm.add %300, %301  : i64
    %303 = llvm.call @malloc(%302) : (i64) -> !llvm.ptr<i8>
    %304 = llvm.bitcast %303 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %305 = llvm.ptrtoint %304 : !llvm.ptr<i32> to i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.sub %301, %306  : i64
    %308 = llvm.add %305, %307  : i64
    %309 = llvm.urem %308, %301  : i64
    %310 = llvm.sub %308, %309  : i64
    %311 = llvm.inttoptr %310 : i64 to !llvm.ptr<i32>
    %312 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %313 = llvm.insertvalue %304, %312[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %314 = llvm.insertvalue %311, %313[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.insertvalue %315, %314[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %317 = llvm.insertvalue %292, %316[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %318 = llvm.insertvalue %293, %317[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %319 = llvm.insertvalue %294, %318[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %320 = llvm.insertvalue %296, %319[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.insertvalue %294, %320[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %322 = llvm.insertvalue %295, %321[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(2 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%323 : i64)
  ^bb25(%326: i64):  // 2 preds: ^bb24, ^bb32
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(4 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%328 : i64)
  ^bb27(%331: i64):  // 2 preds: ^bb26, ^bb31
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%333 : i64)
  ^bb29(%336: i64):  // 2 preds: ^bb28, ^bb30
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %338 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %339 = llvm.mlir.constant(8 : index) : i64
    %340 = llvm.mul %326, %339  : i64
    %341 = llvm.mlir.constant(2 : index) : i64
    %342 = llvm.mul %331, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.add %343, %336  : i64
    %345 = llvm.getelementptr %338[%344] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %346 = llvm.load %345 : !llvm.ptr<i32>
    %347 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %348 = llvm.mlir.constant(8 : index) : i64
    %349 = llvm.mul %326, %348  : i64
    %350 = llvm.mlir.constant(2 : index) : i64
    %351 = llvm.mul %331, %350  : i64
    %352 = llvm.add %349, %351  : i64
    %353 = llvm.add %352, %336  : i64
    %354 = llvm.getelementptr %347[%353] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %346, %354 : !llvm.ptr<i32>
    %355 = llvm.add %336, %335  : i64
    llvm.br ^bb29(%355 : i64)
  ^bb31:  // pred: ^bb29
    %356 = llvm.add %331, %330  : i64
    llvm.br ^bb27(%356 : i64)
  ^bb32:  // pred: ^bb27
    %357 = llvm.add %326, %325  : i64
    llvm.br ^bb25(%357 : i64)
  ^bb33:  // pred: ^bb25
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%358 : i64)
  ^bb34(%361: i64):  // 2 preds: ^bb33, ^bb41
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb35, ^bb42
  ^bb35:  // pred: ^bb34
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(4 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%363 : i64)
  ^bb36(%366: i64):  // 2 preds: ^bb35, ^bb40
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb37, ^bb41
  ^bb37:  // pred: ^bb36
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%368 : i64)
  ^bb38(%371: i64):  // 2 preds: ^bb37, ^bb39
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb39, ^bb40
  ^bb39:  // pred: ^bb38
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.add %361, %373  : i64
    %375 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %376 = llvm.mlir.constant(8 : index) : i64
    %377 = llvm.mul %361, %376  : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mul %366, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.add %380, %371  : i64
    %382 = llvm.getelementptr %375[%381] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %383 = llvm.load %382 : !llvm.ptr<i32>
    %384 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %385 = llvm.mlir.constant(8 : index) : i64
    %386 = llvm.mul %374, %385  : i64
    %387 = llvm.mlir.constant(2 : index) : i64
    %388 = llvm.mul %366, %387  : i64
    %389 = llvm.add %386, %388  : i64
    %390 = llvm.add %389, %371  : i64
    %391 = llvm.getelementptr %384[%390] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %383, %391 : !llvm.ptr<i32>
    %392 = llvm.add %371, %370  : i64
    llvm.br ^bb38(%392 : i64)
  ^bb40:  // pred: ^bb38
    %393 = llvm.add %366, %365  : i64
    llvm.br ^bb36(%393 : i64)
  ^bb41:  // pred: ^bb36
    %394 = llvm.add %361, %360  : i64
    llvm.br ^bb34(%394 : i64)
  ^bb42:  // pred: ^bb34
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%395 : i64)
  ^bb43(%398: i64):  // 2 preds: ^bb42, ^bb50
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(4 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%400 : i64)
  ^bb45(%403: i64):  // 2 preds: ^bb44, ^bb49
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%405 : i64)
  ^bb47(%408: i64):  // 2 preds: ^bb46, ^bb48
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %410 = llvm.mlir.constant(4 : index) : i64
    %411 = llvm.add %398, %410  : i64
    %412 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %413 = llvm.mlir.constant(8 : index) : i64
    %414 = llvm.mul %398, %413  : i64
    %415 = llvm.mlir.constant(2 : index) : i64
    %416 = llvm.mul %403, %415  : i64
    %417 = llvm.add %414, %416  : i64
    %418 = llvm.add %417, %408  : i64
    %419 = llvm.getelementptr %412[%418] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %420 = llvm.load %419 : !llvm.ptr<i32>
    %421 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %422 = llvm.mlir.constant(8 : index) : i64
    %423 = llvm.mul %411, %422  : i64
    %424 = llvm.mlir.constant(2 : index) : i64
    %425 = llvm.mul %403, %424  : i64
    %426 = llvm.add %423, %425  : i64
    %427 = llvm.add %426, %408  : i64
    %428 = llvm.getelementptr %421[%427] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %420, %428 : !llvm.ptr<i32>
    %429 = llvm.add %408, %407  : i64
    llvm.br ^bb47(%429 : i64)
  ^bb49:  // pred: ^bb47
    %430 = llvm.add %403, %402  : i64
    llvm.br ^bb45(%430 : i64)
  ^bb50:  // pred: ^bb45
    %431 = llvm.add %398, %397  : i64
    llvm.br ^bb43(%431 : i64)
  ^bb51:  // pred: ^bb43
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.mlir.constant(2 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%432 : i64)
  ^bb52(%435: i64):  // 2 preds: ^bb51, ^bb59
    %436 = llvm.icmp "slt" %435, %433 : i64
    llvm.cond_br %436, ^bb53, ^bb60
  ^bb53:  // pred: ^bb52
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.mlir.constant(4 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%437 : i64)
  ^bb54(%440: i64):  // 2 preds: ^bb53, ^bb58
    %441 = llvm.icmp "slt" %440, %438 : i64
    llvm.cond_br %441, ^bb55, ^bb59
  ^bb55:  // pred: ^bb54
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%442 : i64)
  ^bb56(%445: i64):  // 2 preds: ^bb55, ^bb57
    %446 = llvm.icmp "slt" %445, %443 : i64
    llvm.cond_br %446, ^bb57, ^bb58
  ^bb57:  // pred: ^bb56
    %447 = llvm.mlir.constant(6 : index) : i64
    %448 = llvm.add %435, %447  : i64
    %449 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %450 = llvm.mlir.constant(8 : index) : i64
    %451 = llvm.mul %435, %450  : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mul %440, %452  : i64
    %454 = llvm.add %451, %453  : i64
    %455 = llvm.add %454, %445  : i64
    %456 = llvm.getelementptr %449[%455] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %457 = llvm.load %456 : !llvm.ptr<i32>
    %458 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %459 = llvm.mlir.constant(8 : index) : i64
    %460 = llvm.mul %448, %459  : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mul %440, %461  : i64
    %463 = llvm.add %460, %462  : i64
    %464 = llvm.add %463, %445  : i64
    %465 = llvm.getelementptr %458[%464] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %457, %465 : !llvm.ptr<i32>
    %466 = llvm.add %445, %444  : i64
    llvm.br ^bb56(%466 : i64)
  ^bb58:  // pred: ^bb56
    %467 = llvm.add %440, %439  : i64
    llvm.br ^bb54(%467 : i64)
  ^bb59:  // pred: ^bb54
    %468 = llvm.add %435, %434  : i64
    llvm.br ^bb52(%468 : i64)
  ^bb60:  // pred: ^bb52
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mlir.constant(2 : index) : i64
    %471 = llvm.mlir.constant(4 : index) : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.constant(8 : index) : i64
    %475 = llvm.mlir.constant(16 : index) : i64
    %476 = llvm.mlir.constant(32 : index) : i64
    %477 = llvm.mlir.null : !llvm.ptr<i1>
    %478 = llvm.getelementptr %477[%476] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %479 = llvm.ptrtoint %478 : !llvm.ptr<i1> to i64
    %480 = llvm.mlir.constant(16 : index) : i64
    %481 = llvm.add %479, %480  : i64
    %482 = llvm.call @malloc(%481) : (i64) -> !llvm.ptr<i8>
    %483 = llvm.bitcast %482 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %484 = llvm.ptrtoint %483 : !llvm.ptr<i1> to i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.sub %480, %485  : i64
    %487 = llvm.add %484, %486  : i64
    %488 = llvm.urem %487, %480  : i64
    %489 = llvm.sub %487, %488  : i64
    %490 = llvm.inttoptr %489 : i64 to !llvm.ptr<i1>
    %491 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %492 = llvm.insertvalue %483, %491[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %490, %492[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.insertvalue %494, %493[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.insertvalue %469, %495[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.insertvalue %470, %496[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %471, %497[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.insertvalue %472, %498[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.insertvalue %475, %499[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %474, %500[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %472, %501[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %473, %502[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.icmp "sgt" %194, %13 : i64
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(2 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%505 : i64)
  ^bb61(%508: i64):  // 2 preds: ^bb60, ^bb71
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%510 : i64)
  ^bb63(%513: i64):  // 2 preds: ^bb62, ^bb70
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.mlir.constant(4 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%515 : i64)
  ^bb65(%518: i64):  // 2 preds: ^bb64, ^bb69
    %519 = llvm.icmp "slt" %518, %516 : i64
    llvm.cond_br %519, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(2 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%520 : i64)
  ^bb67(%523: i64):  // 2 preds: ^bb66, ^bb68
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %525 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %526 = llvm.mlir.constant(8 : index) : i64
    %527 = llvm.mul %513, %526  : i64
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mul %518, %528  : i64
    %530 = llvm.add %527, %529  : i64
    %531 = llvm.add %530, %523  : i64
    %532 = llvm.getelementptr %525[%531] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %533 = llvm.load %532 : !llvm.ptr<i32>
    %534 = llvm.select %504, %523, %14 : i1, i64
    %535 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %536 = llvm.extractvalue %228[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %537 = llvm.mul %508, %536  : i64
    %538 = llvm.extractvalue %228[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.mul %513, %538  : i64
    %540 = llvm.add %537, %539  : i64
    %541 = llvm.extractvalue %228[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.mul %518, %541  : i64
    %543 = llvm.add %540, %542  : i64
    %544 = llvm.add %543, %534  : i64
    %545 = llvm.getelementptr %535[%544] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %546 = llvm.load %545 : !llvm.ptr<i32>
    %547 = llvm.icmp "slt" %533, %546 : i32
    %548 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.mlir.constant(16 : index) : i64
    %550 = llvm.mul %508, %549  : i64
    %551 = llvm.mlir.constant(8 : index) : i64
    %552 = llvm.mul %513, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.mlir.constant(2 : index) : i64
    %555 = llvm.mul %518, %554  : i64
    %556 = llvm.add %553, %555  : i64
    %557 = llvm.add %556, %523  : i64
    %558 = llvm.getelementptr %548[%557] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %547, %558 : !llvm.ptr<i1>
    %559 = llvm.add %523, %522  : i64
    llvm.br ^bb67(%559 : i64)
  ^bb69:  // pred: ^bb67
    %560 = llvm.add %518, %517  : i64
    llvm.br ^bb65(%560 : i64)
  ^bb70:  // pred: ^bb65
    %561 = llvm.add %513, %512  : i64
    llvm.br ^bb63(%561 : i64)
  ^bb71:  // pred: ^bb63
    %562 = llvm.add %508, %507  : i64
    llvm.br ^bb61(%562 : i64)
  ^bb72:  // pred: ^bb61
    %563 = llvm.mlir.constant(2 : index) : i64
    %564 = llvm.mlir.constant(2 : index) : i64
    %565 = llvm.mlir.constant(4 : index) : i64
    %566 = llvm.mlir.constant(2 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    %568 = llvm.mlir.constant(8 : index) : i64
    %569 = llvm.mlir.constant(16 : index) : i64
    %570 = llvm.mlir.constant(32 : index) : i64
    %571 = llvm.mlir.null : !llvm.ptr<i1>
    %572 = llvm.getelementptr %571[%570] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %573 = llvm.ptrtoint %572 : !llvm.ptr<i1> to i64
    %574 = llvm.mlir.constant(16 : index) : i64
    %575 = llvm.add %573, %574  : i64
    %576 = llvm.call @malloc(%575) : (i64) -> !llvm.ptr<i8>
    %577 = llvm.bitcast %576 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %578 = llvm.ptrtoint %577 : !llvm.ptr<i1> to i64
    %579 = llvm.mlir.constant(1 : index) : i64
    %580 = llvm.sub %574, %579  : i64
    %581 = llvm.add %578, %580  : i64
    %582 = llvm.urem %581, %574  : i64
    %583 = llvm.sub %581, %582  : i64
    %584 = llvm.inttoptr %583 : i64 to !llvm.ptr<i1>
    %585 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %586 = llvm.insertvalue %577, %585[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.insertvalue %584, %586[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.mlir.constant(0 : index) : i64
    %589 = llvm.insertvalue %588, %587[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.insertvalue %563, %589[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.insertvalue %564, %590[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.insertvalue %565, %591[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.insertvalue %566, %592[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.insertvalue %569, %593[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.insertvalue %568, %594[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.insertvalue %566, %595[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.insertvalue %567, %596[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.mlir.constant(0 : index) : i64
    %599 = llvm.mlir.constant(2 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%598 : i64)
  ^bb73(%601: i64):  // 2 preds: ^bb72, ^bb83
    %602 = llvm.icmp "slt" %601, %599 : i64
    llvm.cond_br %602, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %603 = llvm.mlir.constant(0 : index) : i64
    %604 = llvm.mlir.constant(2 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%603 : i64)
  ^bb75(%606: i64):  // 2 preds: ^bb74, ^bb82
    %607 = llvm.icmp "slt" %606, %604 : i64
    llvm.cond_br %607, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %608 = llvm.mlir.constant(0 : index) : i64
    %609 = llvm.mlir.constant(4 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%608 : i64)
  ^bb77(%611: i64):  // 2 preds: ^bb76, ^bb81
    %612 = llvm.icmp "slt" %611, %609 : i64
    llvm.cond_br %612, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %613 = llvm.mlir.constant(0 : index) : i64
    %614 = llvm.mlir.constant(2 : index) : i64
    %615 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%613 : i64)
  ^bb79(%616: i64):  // 2 preds: ^bb78, ^bb80
    %617 = llvm.icmp "slt" %616, %614 : i64
    llvm.cond_br %617, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %618 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %619 = llvm.mlir.constant(8 : index) : i64
    %620 = llvm.mul %606, %619  : i64
    %621 = llvm.mlir.constant(2 : index) : i64
    %622 = llvm.mul %611, %621  : i64
    %623 = llvm.add %620, %622  : i64
    %624 = llvm.add %623, %616  : i64
    %625 = llvm.getelementptr %618[%624] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %626 = llvm.load %625 : !llvm.ptr<i32>
    %627 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.mlir.constant(8 : index) : i64
    %629 = llvm.mul %601, %628  : i64
    %630 = llvm.mlir.constant(4 : index) : i64
    %631 = llvm.mul %606, %630  : i64
    %632 = llvm.add %629, %631  : i64
    %633 = llvm.add %632, %611  : i64
    %634 = llvm.add %633, %14  : i64
    %635 = llvm.getelementptr %627[%634] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %636 = llvm.load %635 : !llvm.ptr<i32>
    %637 = llvm.icmp "slt" %626, %636 : i32
    %638 = llvm.extractvalue %597[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %639 = llvm.mlir.constant(16 : index) : i64
    %640 = llvm.mul %601, %639  : i64
    %641 = llvm.mlir.constant(8 : index) : i64
    %642 = llvm.mul %606, %641  : i64
    %643 = llvm.add %640, %642  : i64
    %644 = llvm.mlir.constant(2 : index) : i64
    %645 = llvm.mul %611, %644  : i64
    %646 = llvm.add %643, %645  : i64
    %647 = llvm.add %646, %616  : i64
    %648 = llvm.getelementptr %638[%647] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %637, %648 : !llvm.ptr<i1>
    %649 = llvm.add %616, %615  : i64
    llvm.br ^bb79(%649 : i64)
  ^bb81:  // pred: ^bb79
    %650 = llvm.add %611, %610  : i64
    llvm.br ^bb77(%650 : i64)
  ^bb82:  // pred: ^bb77
    %651 = llvm.add %606, %605  : i64
    llvm.br ^bb75(%651 : i64)
  ^bb83:  // pred: ^bb75
    %652 = llvm.add %601, %600  : i64
    llvm.br ^bb73(%652 : i64)
  ^bb84:  // pred: ^bb73
    %653 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %654 = llvm.insertvalue %322, %653[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %655 = llvm.insertvalue %503, %654[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %656 = llvm.insertvalue %597, %655[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %656 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v3_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(3 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(0 : i64) : i64
    %78 = llvm.getelementptr %51[%77] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %78 : !llvm.ptr<ptr<i8>>
    %79 = llvm.mlir.constant(4 : i64) : i64
    %80 = llvm.call @omTensorCreateUntyped(%79) : (i64) -> !llvm.ptr<i8>
    %81 = llvm.mlir.constant(1 : i64) : i64
    %82 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.bitcast %82 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %84 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.bitcast %84 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%80, %81, %83, %85) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %86 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%80, %86) : (!llvm.ptr<i8>, i64) -> ()
    %87 = llvm.call @omTensorGetShape(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.call @omTensorGetStrides(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %89 = llvm.mlir.constant(0 : i64) : i64
    %90 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %87[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %88[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %87[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %88[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(2 : i64) : i64
    %100 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %87[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %88[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(3 : i64) : i64
    %105 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %87[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %88[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.getelementptr %51[%109] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %80, %110 : !llvm.ptr<ptr<i8>>
    %111 = llvm.mlir.constant(4 : i64) : i64
    %112 = llvm.call @omTensorCreateUntyped(%111) : (i64) -> !llvm.ptr<i8>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.bitcast %114 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %116 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.bitcast %116 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%112, %113, %115, %117) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %118 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%112, %118) : (!llvm.ptr<i8>, i64) -> ()
    %119 = llvm.call @omTensorGetShape(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.call @omTensorGetStrides(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %119[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %120[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %119[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %120[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(2 : i64) : i64
    %132 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %119[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %120[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(3 : i64) : i64
    %137 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %119[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %120[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(2 : i64) : i64
    %142 = llvm.getelementptr %51[%141] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %112, %142 : !llvm.ptr<ptr<i8>>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<205 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<205 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

