module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
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
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(0 : i32) : i32
    %15 = llvm.mlir.constant(0 : index) : i64
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
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.null : !llvm.ptr<i32>
    %51 = llvm.getelementptr %50[%45] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr<i32> to i64
    %53 = llvm.mlir.constant(16 : index) : i64
    %54 = llvm.add %52, %53  : i64
    %55 = llvm.call @malloc(%54) : (i64) -> !llvm.ptr<i8>
    %56 = llvm.bitcast %55 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %57 = llvm.ptrtoint %56 : !llvm.ptr<i32> to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %53, %58  : i64
    %60 = llvm.add %57, %59  : i64
    %61 = llvm.urem %60, %53  : i64
    %62 = llvm.sub %60, %61  : i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr<i32>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %65 = llvm.insertvalue %56, %64[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %45, %68[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %46, %69[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %47, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %48, %71[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %46, %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %47, %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %48, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %49, %75[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%77 : i64)
  ^bb1(%80: i64):  // 2 preds: ^bb0, ^bb11
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%82 : i64)
  ^bb3(%85: i64):  // 2 preds: ^bb2, ^bb10
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%87 : i64)
  ^bb5(%90: i64):  // 2 preds: ^bb4, ^bb9
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%92 : i64)
  ^bb7(%95: i64):  // 2 preds: ^bb6, ^bb8
    %96 = llvm.icmp "slt" %95, %93 : i64
    llvm.cond_br %96, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %97 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.add %80, %85  : i64
    %99 = llvm.add %98, %90  : i64
    %100 = llvm.add %99, %95  : i64
    %101 = llvm.getelementptr %97[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.load %101 : !llvm.ptr<i32>
    %103 = llvm.sub %14, %102  : i32
    %104 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.add %80, %85  : i64
    %106 = llvm.add %105, %90  : i64
    %107 = llvm.add %106, %95  : i64
    %108 = llvm.getelementptr %104[%107] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %103, %108 : !llvm.ptr<i32>
    %109 = llvm.add %95, %94  : i64
    llvm.br ^bb7(%109 : i64)
  ^bb9:  // pred: ^bb7
    %110 = llvm.add %90, %89  : i64
    llvm.br ^bb5(%110 : i64)
  ^bb10:  // pred: ^bb5
    %111 = llvm.add %85, %84  : i64
    llvm.br ^bb3(%111 : i64)
  ^bb11:  // pred: ^bb3
    %112 = llvm.add %80, %79  : i64
    llvm.br ^bb1(%112 : i64)
  ^bb12:  // pred: ^bb1
    %113 = llvm.mlir.constant(4 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.null : !llvm.ptr<i64>
    %116 = llvm.getelementptr %115[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<i64> to i64
    %118 = llvm.mlir.constant(16 : index) : i64
    %119 = llvm.add %117, %118  : i64
    %120 = llvm.call @malloc(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.bitcast %120 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %122 = llvm.ptrtoint %121 : !llvm.ptr<i64> to i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.sub %118, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.urem %125, %118  : i64
    %127 = llvm.sub %125, %126  : i64
    %128 = llvm.inttoptr %127 : i64 to !llvm.ptr<i64>
    %129 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %130 = llvm.insertvalue %121, %129[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %128, %130[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.insertvalue %132, %131[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %113, %133[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %114, %134[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(4 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%136 : i64)
  ^bb13(%139: i64):  // 2 preds: ^bb12, ^bb14
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %141 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.getelementptr %141[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %142 : !llvm.ptr<i64>
    %143 = llvm.add %139, %138  : i64
    llvm.br ^bb13(%143 : i64)
  ^bb15:  // pred: ^bb13
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.null : !llvm.ptr<i64>
    %147 = llvm.getelementptr %146[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %148 = llvm.ptrtoint %147 : !llvm.ptr<i64> to i64
    %149 = llvm.mlir.constant(16 : index) : i64
    %150 = llvm.add %148, %149  : i64
    %151 = llvm.call @malloc(%150) : (i64) -> !llvm.ptr<i8>
    %152 = llvm.bitcast %151 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %153 = llvm.ptrtoint %152 : !llvm.ptr<i64> to i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.sub %149, %154  : i64
    %156 = llvm.add %153, %155  : i64
    %157 = llvm.urem %156, %149  : i64
    %158 = llvm.sub %156, %157  : i64
    %159 = llvm.inttoptr %158 : i64 to !llvm.ptr<i64>
    %160 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %161 = llvm.insertvalue %152, %160[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.insertvalue %159, %161[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.insertvalue %163, %162[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %144, %164[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.insertvalue %145, %165[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(4 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%167 : i64)
  ^bb16(%170: i64):  // 2 preds: ^bb15, ^bb17
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %172 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.getelementptr %172[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %174 = llvm.load %173 : !llvm.ptr<i64>
    %175 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %176 = llvm.load %175 : !llvm.ptr<i64>
    %177 = llvm.mul %174, %176  : i64
    %178 = llvm.extractvalue %166[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.getelementptr %178[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %179 : !llvm.ptr<i64>
    %180 = llvm.add %170, %169  : i64
    llvm.br ^bb16(%180 : i64)
  ^bb18:  // pred: ^bb16
    %181 = llvm.mlir.constant(4 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.null : !llvm.ptr<i1>
    %184 = llvm.getelementptr %183[%181] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %185 = llvm.ptrtoint %184 : !llvm.ptr<i1> to i64
    %186 = llvm.mlir.constant(16 : index) : i64
    %187 = llvm.add %185, %186  : i64
    %188 = llvm.call @malloc(%187) : (i64) -> !llvm.ptr<i8>
    %189 = llvm.bitcast %188 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %190 = llvm.ptrtoint %189 : !llvm.ptr<i1> to i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.sub %186, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.urem %193, %186  : i64
    %195 = llvm.sub %193, %194  : i64
    %196 = llvm.inttoptr %195 : i64 to !llvm.ptr<i1>
    %197 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %198 = llvm.insertvalue %189, %197[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %196, %198[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.insertvalue %200, %199[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %181, %201[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %182, %202[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.mlir.constant(4 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%204 : i64)
  ^bb19(%207: i64):  // 2 preds: ^bb18, ^bb20
    %208 = llvm.icmp "slt" %207, %205 : i64
    llvm.cond_br %208, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %209 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.getelementptr %209[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %211 = llvm.load %210 : !llvm.ptr<i64>
    %212 = llvm.extractvalue %166[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.getelementptr %212[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %214 = llvm.load %213 : !llvm.ptr<i64>
    %215 = llvm.icmp "eq" %211, %214 : i64
    %216 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.getelementptr %216[%207] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %215, %217 : !llvm.ptr<i1>
    %218 = llvm.add %207, %206  : i64
    llvm.br ^bb19(%218 : i64)
  ^bb21:  // pred: ^bb19
    %219 = llvm.mlir.constant(4 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.null : !llvm.ptr<i64>
    %222 = llvm.getelementptr %221[%219] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %223 = llvm.ptrtoint %222 : !llvm.ptr<i64> to i64
    %224 = llvm.mlir.constant(16 : index) : i64
    %225 = llvm.add %223, %224  : i64
    %226 = llvm.call @malloc(%225) : (i64) -> !llvm.ptr<i8>
    %227 = llvm.bitcast %226 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %228 = llvm.ptrtoint %227 : !llvm.ptr<i64> to i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.sub %224, %229  : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.urem %231, %224  : i64
    %233 = llvm.sub %231, %232  : i64
    %234 = llvm.inttoptr %233 : i64 to !llvm.ptr<i64>
    %235 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %236 = llvm.insertvalue %227, %235[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.insertvalue %234, %236[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.insertvalue %238, %237[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %219, %239[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.insertvalue %220, %240[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(4 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%242 : i64)
  ^bb22(%245: i64):  // 2 preds: ^bb21, ^bb23
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %247 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.getelementptr %247[%245] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %249 = llvm.load %248 : !llvm.ptr<i1>
    %250 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.getelementptr %250[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %252 = llvm.load %251 : !llvm.ptr<i64>
    %253 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.getelementptr %253[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %255 = llvm.load %254 : !llvm.ptr<i64>
    %256 = llvm.select %249, %252, %255 : i1, i64
    %257 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.getelementptr %257[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %256, %258 : !llvm.ptr<i64>
    %259 = llvm.add %245, %244  : i64
    llvm.br ^bb22(%259 : i64)
  ^bb24:  // pred: ^bb22
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.null : !llvm.ptr<i32>
    %266 = llvm.getelementptr %265[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %267 = llvm.ptrtoint %266 : !llvm.ptr<i32> to i64
    %268 = llvm.mlir.constant(16 : index) : i64
    %269 = llvm.add %267, %268  : i64
    %270 = llvm.call @malloc(%269) : (i64) -> !llvm.ptr<i8>
    %271 = llvm.bitcast %270 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %272 = llvm.ptrtoint %271 : !llvm.ptr<i32> to i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.sub %268, %273  : i64
    %275 = llvm.add %272, %274  : i64
    %276 = llvm.urem %275, %268  : i64
    %277 = llvm.sub %275, %276  : i64
    %278 = llvm.inttoptr %277 : i64 to !llvm.ptr<i32>
    %279 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %280 = llvm.insertvalue %271, %279[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %278, %280[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.insertvalue %282, %281[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %260, %283[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %261, %284[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %262, %285[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.insertvalue %263, %286[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.insertvalue %261, %287[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.insertvalue %262, %288[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.insertvalue %263, %289[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.insertvalue %264, %290[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%292 : i64)
  ^bb25(%295: i64):  // 2 preds: ^bb24, ^bb35
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%297 : i64)
  ^bb27(%300: i64):  // 2 preds: ^bb26, ^bb34
    %301 = llvm.icmp "slt" %300, %298 : i64
    llvm.cond_br %301, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%302 : i64)
  ^bb29(%305: i64):  // 2 preds: ^bb28, ^bb33
    %306 = llvm.icmp "slt" %305, %303 : i64
    llvm.cond_br %306, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%307 : i64)
  ^bb31(%310: i64):  // 2 preds: ^bb30, ^bb32
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %312 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.add %15, %15  : i64
    %314 = llvm.add %313, %15  : i64
    %315 = llvm.add %314, %15  : i64
    %316 = llvm.getelementptr %312[%315] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %317 = llvm.load %316 : !llvm.ptr<i32>
    %318 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.add %295, %300  : i64
    %320 = llvm.add %319, %305  : i64
    %321 = llvm.add %320, %310  : i64
    %322 = llvm.getelementptr %318[%321] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %317, %322 : !llvm.ptr<i32>
    %323 = llvm.add %310, %309  : i64
    llvm.br ^bb31(%323 : i64)
  ^bb33:  // pred: ^bb31
    %324 = llvm.add %305, %304  : i64
    llvm.br ^bb29(%324 : i64)
  ^bb34:  // pred: ^bb29
    %325 = llvm.add %300, %299  : i64
    llvm.br ^bb27(%325 : i64)
  ^bb35:  // pred: ^bb27
    %326 = llvm.add %295, %294  : i64
    llvm.br ^bb25(%326 : i64)
  ^bb36:  // pred: ^bb25
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.null : !llvm.ptr<i32>
    %333 = llvm.getelementptr %332[%327] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %334 = llvm.ptrtoint %333 : !llvm.ptr<i32> to i64
    %335 = llvm.mlir.constant(16 : index) : i64
    %336 = llvm.add %334, %335  : i64
    %337 = llvm.call @malloc(%336) : (i64) -> !llvm.ptr<i8>
    %338 = llvm.bitcast %337 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %339 = llvm.ptrtoint %338 : !llvm.ptr<i32> to i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.sub %335, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.urem %342, %335  : i64
    %344 = llvm.sub %342, %343  : i64
    %345 = llvm.inttoptr %344 : i64 to !llvm.ptr<i32>
    %346 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %347 = llvm.insertvalue %338, %346[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %345, %347[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.insertvalue %349, %348[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %327, %350[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %328, %351[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %329, %352[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %330, %353[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %328, %354[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %329, %355[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %330, %356[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %331, %357[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%359 : i64)
  ^bb37(%362: i64):  // 2 preds: ^bb36, ^bb47
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%364 : i64)
  ^bb39(%367: i64):  // 2 preds: ^bb38, ^bb46
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%369 : i64)
  ^bb41(%372: i64):  // 2 preds: ^bb40, ^bb45
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%374 : i64)
  ^bb43(%377: i64):  // 2 preds: ^bb42, ^bb44
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %379 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.add %362, %367  : i64
    %381 = llvm.add %380, %372  : i64
    %382 = llvm.add %381, %377  : i64
    %383 = llvm.getelementptr %379[%382] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %384 = llvm.load %383 : !llvm.ptr<i32>
    %385 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.add %362, %367  : i64
    %387 = llvm.add %386, %372  : i64
    %388 = llvm.add %387, %377  : i64
    %389 = llvm.getelementptr %385[%388] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %390 = llvm.load %389 : !llvm.ptr<i32>
    %391 = llvm.icmp "slt" %384, %390 : i32
    %392 = llvm.select %391, %384, %390 : i1, i32
    %393 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.add %362, %367  : i64
    %395 = llvm.add %394, %372  : i64
    %396 = llvm.add %395, %377  : i64
    %397 = llvm.getelementptr %393[%396] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %392, %397 : !llvm.ptr<i32>
    %398 = llvm.add %377, %376  : i64
    llvm.br ^bb43(%398 : i64)
  ^bb45:  // pred: ^bb43
    %399 = llvm.add %372, %371  : i64
    llvm.br ^bb41(%399 : i64)
  ^bb46:  // pred: ^bb41
    %400 = llvm.add %367, %366  : i64
    llvm.br ^bb39(%400 : i64)
  ^bb47:  // pred: ^bb39
    %401 = llvm.add %362, %361  : i64
    llvm.br ^bb37(%401 : i64)
  ^bb48:  // pred: ^bb37
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.null : !llvm.ptr<i64>
    %408 = llvm.getelementptr %407[%402] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %409 = llvm.ptrtoint %408 : !llvm.ptr<i64> to i64
    %410 = llvm.mlir.constant(16 : index) : i64
    %411 = llvm.add %409, %410  : i64
    %412 = llvm.call @malloc(%411) : (i64) -> !llvm.ptr<i8>
    %413 = llvm.bitcast %412 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %414 = llvm.ptrtoint %413 : !llvm.ptr<i64> to i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.sub %410, %415  : i64
    %417 = llvm.add %414, %416  : i64
    %418 = llvm.urem %417, %410  : i64
    %419 = llvm.sub %417, %418  : i64
    %420 = llvm.inttoptr %419 : i64 to !llvm.ptr<i64>
    %421 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %422 = llvm.insertvalue %413, %421[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %420, %422[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.insertvalue %424, %423[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.insertvalue %402, %425[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.insertvalue %403, %426[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %404, %427[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %405, %428[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %403, %429[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %404, %430[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %405, %431[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %406, %432[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%434 : i64)
  ^bb49(%437: i64):  // 2 preds: ^bb48, ^bb59
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%439 : i64)
  ^bb51(%442: i64):  // 2 preds: ^bb50, ^bb58
    %443 = llvm.icmp "slt" %442, %440 : i64
    llvm.cond_br %443, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%444 : i64)
  ^bb53(%447: i64):  // 2 preds: ^bb52, ^bb57
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%449 : i64)
  ^bb55(%452: i64):  // 2 preds: ^bb54, ^bb56
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %454 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.add %437, %442  : i64
    %456 = llvm.add %455, %447  : i64
    %457 = llvm.add %456, %452  : i64
    %458 = llvm.getelementptr %454[%457] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %459 = llvm.load %458 : !llvm.ptr<i32>
    %460 = llvm.sext %459 : i32 to i64
    %461 = llvm.extractvalue %433[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.add %437, %442  : i64
    %463 = llvm.add %462, %447  : i64
    %464 = llvm.add %463, %452  : i64
    %465 = llvm.getelementptr %461[%464] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %460, %465 : !llvm.ptr<i64>
    %466 = llvm.add %452, %451  : i64
    llvm.br ^bb55(%466 : i64)
  ^bb57:  // pred: ^bb55
    %467 = llvm.add %447, %446  : i64
    llvm.br ^bb53(%467 : i64)
  ^bb58:  // pred: ^bb53
    %468 = llvm.add %442, %441  : i64
    llvm.br ^bb51(%468 : i64)
  ^bb59:  // pred: ^bb51
    %469 = llvm.add %437, %436  : i64
    llvm.br ^bb49(%469 : i64)
  ^bb60:  // pred: ^bb49
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.null : !llvm.ptr<i64>
    %475 = llvm.getelementptr %474[%470] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %476 = llvm.ptrtoint %475 : !llvm.ptr<i64> to i64
    %477 = llvm.mlir.constant(16 : index) : i64
    %478 = llvm.add %476, %477  : i64
    %479 = llvm.call @malloc(%478) : (i64) -> !llvm.ptr<i8>
    %480 = llvm.bitcast %479 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %481 = llvm.ptrtoint %480 : !llvm.ptr<i64> to i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.sub %477, %482  : i64
    %484 = llvm.add %481, %483  : i64
    %485 = llvm.urem %484, %477  : i64
    %486 = llvm.sub %484, %485  : i64
    %487 = llvm.inttoptr %486 : i64 to !llvm.ptr<i64>
    %488 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %489 = llvm.insertvalue %480, %488[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %490 = llvm.insertvalue %487, %489[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.insertvalue %491, %490[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %493 = llvm.insertvalue %470, %492[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %494 = llvm.insertvalue %471, %493[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %495 = llvm.insertvalue %472, %494[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %496 = llvm.insertvalue %471, %495[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %497 = llvm.insertvalue %472, %496[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %498 = llvm.insertvalue %473, %497[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%499 : i64)
  ^bb61(%502: i64):  // 2 preds: ^bb60, ^bb68
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%504 : i64)
  ^bb63(%507: i64):  // 2 preds: ^bb62, ^bb67
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%509 : i64)
  ^bb65(%512: i64):  // 2 preds: ^bb64, ^bb66
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %514 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %515 = llvm.add %502, %507  : i64
    %516 = llvm.add %515, %512  : i64
    %517 = llvm.getelementptr %514[%516] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %517 : !llvm.ptr<i64>
    %518 = llvm.add %512, %511  : i64
    llvm.br ^bb65(%518 : i64)
  ^bb67:  // pred: ^bb65
    %519 = llvm.add %507, %506  : i64
    llvm.br ^bb63(%519 : i64)
  ^bb68:  // pred: ^bb63
    %520 = llvm.add %502, %501  : i64
    llvm.br ^bb61(%520 : i64)
  ^bb69:  // pred: ^bb61
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%521 : i64)
  ^bb70(%524: i64):  // 2 preds: ^bb69, ^bb80
    %525 = llvm.icmp "slt" %524, %522 : i64
    llvm.cond_br %525, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%526 : i64)
  ^bb72(%529: i64):  // 2 preds: ^bb71, ^bb79
    %530 = llvm.icmp "slt" %529, %527 : i64
    llvm.cond_br %530, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%531 : i64)
  ^bb74(%534: i64):  // 2 preds: ^bb73, ^bb78
    %535 = llvm.icmp "slt" %534, %532 : i64
    llvm.cond_br %535, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %536 = llvm.mlir.constant(0 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%536 : i64)
  ^bb76(%539: i64):  // 2 preds: ^bb75, ^bb77
    %540 = llvm.icmp "slt" %539, %537 : i64
    llvm.cond_br %540, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %541 = llvm.extractvalue %433[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.add %524, %529  : i64
    %543 = llvm.add %542, %534  : i64
    %544 = llvm.add %543, %539  : i64
    %545 = llvm.getelementptr %541[%544] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %546 = llvm.load %545 : !llvm.ptr<i64>
    %547 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %548 = llvm.add %529, %534  : i64
    %549 = llvm.add %548, %539  : i64
    %550 = llvm.getelementptr %547[%549] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %551 = llvm.load %550 : !llvm.ptr<i64>
    %552 = llvm.add %551, %546  : i64
    %553 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %554 = llvm.add %529, %534  : i64
    %555 = llvm.add %554, %539  : i64
    %556 = llvm.getelementptr %553[%555] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %552, %556 : !llvm.ptr<i64>
    %557 = llvm.add %539, %538  : i64
    llvm.br ^bb76(%557 : i64)
  ^bb78:  // pred: ^bb76
    %558 = llvm.add %534, %533  : i64
    llvm.br ^bb74(%558 : i64)
  ^bb79:  // pred: ^bb74
    %559 = llvm.add %529, %528  : i64
    llvm.br ^bb72(%559 : i64)
  ^bb80:  // pred: ^bb72
    %560 = llvm.add %524, %523  : i64
    llvm.br ^bb70(%560 : i64)
  ^bb81:  // pred: ^bb70
    %561 = llvm.mlir.constant(1 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.mlir.null : !llvm.ptr<i64>
    %566 = llvm.getelementptr %565[%561] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %567 = llvm.ptrtoint %566 : !llvm.ptr<i64> to i64
    %568 = llvm.mlir.constant(16 : index) : i64
    %569 = llvm.add %567, %568  : i64
    %570 = llvm.call @malloc(%569) : (i64) -> !llvm.ptr<i8>
    %571 = llvm.bitcast %570 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %572 = llvm.ptrtoint %571 : !llvm.ptr<i64> to i64
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.sub %568, %573  : i64
    %575 = llvm.add %572, %574  : i64
    %576 = llvm.urem %575, %568  : i64
    %577 = llvm.sub %575, %576  : i64
    %578 = llvm.inttoptr %577 : i64 to !llvm.ptr<i64>
    %579 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %580 = llvm.insertvalue %571, %579[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %581 = llvm.insertvalue %578, %580[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.insertvalue %582, %581[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %584 = llvm.insertvalue %561, %583[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %585 = llvm.insertvalue %562, %584[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %586 = llvm.insertvalue %563, %585[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %587 = llvm.insertvalue %562, %586[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %588 = llvm.insertvalue %563, %587[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %589 = llvm.insertvalue %564, %588[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %590 = llvm.mlir.constant(1 : index) : i64
    %591 = llvm.mlir.null : !llvm.ptr<i64>
    %592 = llvm.getelementptr %591[%590] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %593 = llvm.ptrtoint %592 : !llvm.ptr<i64> to i64
    %594 = llvm.alloca %593 x i64 : (i64) -> !llvm.ptr<i64>
    %595 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %596 = llvm.insertvalue %594, %595[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %597 = llvm.insertvalue %594, %596[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %598 = llvm.mlir.constant(0 : index) : i64
    %599 = llvm.insertvalue %598, %597[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %600 = llvm.mlir.constant(0 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%600 : i64)
  ^bb82(%603: i64):  // 2 preds: ^bb81, ^bb92
    %604 = llvm.icmp "slt" %603, %601 : i64
    llvm.cond_br %604, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%605 : i64)
  ^bb84(%608: i64):  // 2 preds: ^bb83, ^bb91
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %610 = llvm.mlir.constant(0 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%610 : i64)
  ^bb86(%613: i64):  // 2 preds: ^bb85, ^bb90
    %614 = llvm.icmp "slt" %613, %611 : i64
    llvm.cond_br %614, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %615 = llvm.extractvalue %599[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %12, %615 : !llvm.ptr<i64>
    %616 = llvm.mlir.constant(0 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%616 : i64)
  ^bb88(%619: i64):  // 2 preds: ^bb87, ^bb89
    %620 = llvm.icmp "slt" %619, %617 : i64
    llvm.cond_br %620, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %621 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %622 = llvm.add %603, %608  : i64
    %623 = llvm.add %622, %619  : i64
    %624 = llvm.getelementptr %621[%623] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %625 = llvm.load %624 : !llvm.ptr<i64>
    %626 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %627 = llvm.add %603, %619  : i64
    %628 = llvm.add %627, %613  : i64
    %629 = llvm.getelementptr %626[%628] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %630 = llvm.load %629 : !llvm.ptr<i64>
    %631 = llvm.extractvalue %599[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %632 = llvm.load %631 : !llvm.ptr<i64>
    %633 = llvm.mul %625, %630  : i64
    %634 = llvm.add %632, %633  : i64
    %635 = llvm.extractvalue %599[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %634, %635 : !llvm.ptr<i64>
    %636 = llvm.add %619, %618  : i64
    llvm.br ^bb88(%636 : i64)
  ^bb90:  // pred: ^bb88
    %637 = llvm.extractvalue %599[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %638 = llvm.load %637 : !llvm.ptr<i64>
    %639 = llvm.extractvalue %589[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %640 = llvm.add %603, %608  : i64
    %641 = llvm.add %640, %613  : i64
    %642 = llvm.getelementptr %639[%641] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %638, %642 : !llvm.ptr<i64>
    %643 = llvm.add %613, %612  : i64
    llvm.br ^bb86(%643 : i64)
  ^bb91:  // pred: ^bb86
    %644 = llvm.add %608, %607  : i64
    llvm.br ^bb84(%644 : i64)
  ^bb92:  // pred: ^bb84
    %645 = llvm.add %603, %602  : i64
    llvm.br ^bb82(%645 : i64)
  ^bb93:  // pred: ^bb82
    %646 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %647 = llvm.insertvalue %291, %646[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %648 = llvm.insertvalue %589, %647[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %648 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

