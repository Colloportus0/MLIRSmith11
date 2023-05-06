module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : i64) : i64
    %14 = llvm.mlir.constant(-1 : i64) : i64
    %15 = llvm.mlir.constant(0 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<3 x i64>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(3 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<3 x i64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(3 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %47 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %47, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %48, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.null : !llvm.ptr<i32>
    %75 = llvm.getelementptr %74[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %76 = llvm.ptrtoint %75 : !llvm.ptr<i32> to i64
    %77 = llvm.mlir.constant(16 : index) : i64
    %78 = llvm.add %76, %77  : i64
    %79 = llvm.call @malloc(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.bitcast %79 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %81 = llvm.ptrtoint %80 : !llvm.ptr<i32> to i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.sub %77, %82  : i64
    %84 = llvm.add %81, %83  : i64
    %85 = llvm.urem %84, %77  : i64
    %86 = llvm.sub %84, %85  : i64
    %87 = llvm.inttoptr %86 : i64 to !llvm.ptr<i32>
    %88 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %89 = llvm.insertvalue %80, %88[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %87, %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.insertvalue %91, %90[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %69, %92[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %70, %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %71, %94[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %72, %95[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %70, %96[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %71, %97[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %72, %98[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %73, %99[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%101 : i64)
  ^bb1(%104: i64):  // 2 preds: ^bb0, ^bb11
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%106 : i64)
  ^bb3(%109: i64):  // 2 preds: ^bb2, ^bb10
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%111 : i64)
  ^bb5(%114: i64):  // 2 preds: ^bb4, ^bb9
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%116 : i64)
  ^bb7(%119: i64):  // 2 preds: ^bb6, ^bb8
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %121 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.add %104, %109  : i64
    %123 = llvm.add %122, %114  : i64
    %124 = llvm.add %123, %119  : i64
    %125 = llvm.getelementptr %121[%124] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %126 = llvm.load %125 : !llvm.ptr<i32>
    %127 = llvm.sub %15, %126  : i32
    %128 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.add %104, %109  : i64
    %130 = llvm.add %129, %114  : i64
    %131 = llvm.add %130, %119  : i64
    %132 = llvm.getelementptr %128[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %127, %132 : !llvm.ptr<i32>
    %133 = llvm.add %119, %118  : i64
    llvm.br ^bb7(%133 : i64)
  ^bb9:  // pred: ^bb7
    %134 = llvm.add %114, %113  : i64
    llvm.br ^bb5(%134 : i64)
  ^bb10:  // pred: ^bb5
    %135 = llvm.add %109, %108  : i64
    llvm.br ^bb3(%135 : i64)
  ^bb11:  // pred: ^bb3
    %136 = llvm.add %104, %103  : i64
    llvm.br ^bb1(%136 : i64)
  ^bb12:  // pred: ^bb1
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.null : !llvm.ptr<i64>
    %142 = llvm.getelementptr %141[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %143 = llvm.ptrtoint %142 : !llvm.ptr<i64> to i64
    %144 = llvm.mlir.constant(16 : index) : i64
    %145 = llvm.add %143, %144  : i64
    %146 = llvm.call @malloc(%145) : (i64) -> !llvm.ptr<i8>
    %147 = llvm.bitcast %146 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %148 = llvm.ptrtoint %147 : !llvm.ptr<i64> to i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.sub %144, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.urem %151, %144  : i64
    %153 = llvm.sub %151, %152  : i64
    %154 = llvm.inttoptr %153 : i64 to !llvm.ptr<i64>
    %155 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %156 = llvm.insertvalue %147, %155[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %157 = llvm.insertvalue %154, %156[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.insertvalue %158, %157[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %160 = llvm.insertvalue %137, %159[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %161 = llvm.insertvalue %138, %160[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %162 = llvm.insertvalue %139, %161[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %163 = llvm.insertvalue %138, %162[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %164 = llvm.insertvalue %139, %163[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %165 = llvm.insertvalue %140, %164[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%166 : i64)
  ^bb13(%169: i64):  // 2 preds: ^bb12, ^bb20
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%171 : i64)
  ^bb15(%174: i64):  // 2 preds: ^bb14, ^bb19
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%176 : i64)
  ^bb17(%179: i64):  // 2 preds: ^bb16, ^bb18
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %181 = llvm.extractvalue %165[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %182 = llvm.add %169, %174  : i64
    %183 = llvm.add %182, %179  : i64
    %184 = llvm.getelementptr %181[%183] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %184 : !llvm.ptr<i64>
    %185 = llvm.add %179, %178  : i64
    llvm.br ^bb17(%185 : i64)
  ^bb19:  // pred: ^bb17
    %186 = llvm.add %174, %173  : i64
    llvm.br ^bb15(%186 : i64)
  ^bb20:  // pred: ^bb15
    %187 = llvm.add %169, %168  : i64
    llvm.br ^bb13(%187 : i64)
  ^bb21:  // pred: ^bb13
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%188 : i64)
  ^bb22(%191: i64):  // 2 preds: ^bb21, ^bb32
    %192 = llvm.icmp "slt" %191, %189 : i64
    llvm.cond_br %192, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%193 : i64)
  ^bb24(%196: i64):  // 2 preds: ^bb23, ^bb31
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%198 : i64)
  ^bb26(%201: i64):  // 2 preds: ^bb25, ^bb30
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%203 : i64)
  ^bb28(%206: i64):  // 2 preds: ^bb27, ^bb29
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %208 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.add %191, %196  : i64
    %210 = llvm.add %209, %201  : i64
    %211 = llvm.add %210, %206  : i64
    %212 = llvm.getelementptr %208[%211] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %213 = llvm.load %212 : !llvm.ptr<i32>
    %214 = llvm.extractvalue %165[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %215 = llvm.add %191, %196  : i64
    %216 = llvm.add %215, %206  : i64
    %217 = llvm.getelementptr %214[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %218 = llvm.load %217 : !llvm.ptr<i64>
    %219 = llvm.icmp "slt" %218, %13 : i64
    %220 = llvm.select %219, %13, %218 : i1, i64
    %221 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.add %191, %196  : i64
    %223 = llvm.add %222, %220  : i64
    %224 = llvm.add %223, %206  : i64
    %225 = llvm.getelementptr %221[%224] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %226 = llvm.load %225 : !llvm.ptr<i32>
    %227 = llvm.icmp "slt" %213, %226 : i32
    %228 = llvm.select %227, %201, %220 : i1, i64
    %229 = llvm.extractvalue %165[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.add %191, %196  : i64
    %231 = llvm.add %230, %206  : i64
    %232 = llvm.getelementptr %229[%231] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %228, %232 : !llvm.ptr<i64>
    %233 = llvm.add %206, %205  : i64
    llvm.br ^bb28(%233 : i64)
  ^bb30:  // pred: ^bb28
    %234 = llvm.add %201, %200  : i64
    llvm.br ^bb26(%234 : i64)
  ^bb31:  // pred: ^bb26
    %235 = llvm.add %196, %195  : i64
    llvm.br ^bb24(%235 : i64)
  ^bb32:  // pred: ^bb24
    %236 = llvm.add %191, %190  : i64
    llvm.br ^bb22(%236 : i64)
  ^bb33:  // pred: ^bb22
    %237 = llvm.mlir.constant(3 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.null : !llvm.ptr<i64>
    %240 = llvm.getelementptr %239[%237] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %241 = llvm.ptrtoint %240 : !llvm.ptr<i64> to i64
    %242 = llvm.mlir.constant(16 : index) : i64
    %243 = llvm.add %241, %242  : i64
    %244 = llvm.call @malloc(%243) : (i64) -> !llvm.ptr<i8>
    %245 = llvm.bitcast %244 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %246 = llvm.ptrtoint %245 : !llvm.ptr<i64> to i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.sub %242, %247  : i64
    %249 = llvm.add %246, %248  : i64
    %250 = llvm.urem %249, %242  : i64
    %251 = llvm.sub %249, %250  : i64
    %252 = llvm.inttoptr %251 : i64 to !llvm.ptr<i64>
    %253 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %254 = llvm.insertvalue %245, %253[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.insertvalue %252, %254[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.insertvalue %256, %255[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.insertvalue %237, %257[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.insertvalue %238, %258[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.mlir.constant(3 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%260 : i64)
  ^bb34(%263: i64):  // 2 preds: ^bb33, ^bb35
    %264 = llvm.icmp "slt" %263, %261 : i64
    llvm.cond_br %264, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %265 = llvm.extractvalue %259[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.getelementptr %265[%263] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %266 : !llvm.ptr<i64>
    %267 = llvm.add %263, %262  : i64
    llvm.br ^bb34(%267 : i64)
  ^bb36:  // pred: ^bb34
    %268 = llvm.mlir.constant(3 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.null : !llvm.ptr<i64>
    %271 = llvm.getelementptr %270[%268] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %272 = llvm.ptrtoint %271 : !llvm.ptr<i64> to i64
    %273 = llvm.mlir.constant(16 : index) : i64
    %274 = llvm.add %272, %273  : i64
    %275 = llvm.call @malloc(%274) : (i64) -> !llvm.ptr<i8>
    %276 = llvm.bitcast %275 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %277 = llvm.ptrtoint %276 : !llvm.ptr<i64> to i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.sub %273, %278  : i64
    %280 = llvm.add %277, %279  : i64
    %281 = llvm.urem %280, %273  : i64
    %282 = llvm.sub %280, %281  : i64
    %283 = llvm.inttoptr %282 : i64 to !llvm.ptr<i64>
    %284 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %285 = llvm.insertvalue %276, %284[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %283, %285[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.insertvalue %287, %286[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.insertvalue %268, %288[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.insertvalue %269, %289[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(3 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%291 : i64)
  ^bb37(%294: i64):  // 2 preds: ^bb36, ^bb38
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %296 = llvm.extractvalue %259[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.getelementptr %296[%294] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %298 = llvm.load %297 : !llvm.ptr<i64>
    %299 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %300 = llvm.load %299 : !llvm.ptr<i64>
    %301 = llvm.mul %298, %300  : i64
    %302 = llvm.extractvalue %290[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.getelementptr %302[%294] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %301, %303 : !llvm.ptr<i64>
    %304 = llvm.add %294, %293  : i64
    llvm.br ^bb37(%304 : i64)
  ^bb39:  // pred: ^bb37
    %305 = llvm.mlir.constant(3 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.null : !llvm.ptr<i1>
    %308 = llvm.getelementptr %307[%305] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %309 = llvm.ptrtoint %308 : !llvm.ptr<i1> to i64
    %310 = llvm.mlir.constant(16 : index) : i64
    %311 = llvm.add %309, %310  : i64
    %312 = llvm.call @malloc(%311) : (i64) -> !llvm.ptr<i8>
    %313 = llvm.bitcast %312 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %314 = llvm.ptrtoint %313 : !llvm.ptr<i1> to i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.sub %310, %315  : i64
    %317 = llvm.add %314, %316  : i64
    %318 = llvm.urem %317, %310  : i64
    %319 = llvm.sub %317, %318  : i64
    %320 = llvm.inttoptr %319 : i64 to !llvm.ptr<i1>
    %321 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %322 = llvm.insertvalue %313, %321[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %320, %322[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.insertvalue %324, %323[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.insertvalue %305, %325[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.insertvalue %306, %326[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(3 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%328 : i64)
  ^bb40(%331: i64):  // 2 preds: ^bb39, ^bb41
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %333 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.getelementptr %333[%331] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %335 = llvm.load %334 : !llvm.ptr<i64>
    %336 = llvm.extractvalue %290[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%331] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %338 = llvm.load %337 : !llvm.ptr<i64>
    %339 = llvm.icmp "eq" %335, %338 : i64
    %340 = llvm.extractvalue %327[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.getelementptr %340[%331] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %339, %341 : !llvm.ptr<i1>
    %342 = llvm.add %331, %330  : i64
    llvm.br ^bb40(%342 : i64)
  ^bb42:  // pred: ^bb40
    %343 = llvm.mlir.constant(3 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.null : !llvm.ptr<i64>
    %346 = llvm.getelementptr %345[%343] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %347 = llvm.ptrtoint %346 : !llvm.ptr<i64> to i64
    %348 = llvm.mlir.constant(16 : index) : i64
    %349 = llvm.add %347, %348  : i64
    %350 = llvm.call @malloc(%349) : (i64) -> !llvm.ptr<i8>
    %351 = llvm.bitcast %350 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %352 = llvm.ptrtoint %351 : !llvm.ptr<i64> to i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.sub %348, %353  : i64
    %355 = llvm.add %352, %354  : i64
    %356 = llvm.urem %355, %348  : i64
    %357 = llvm.sub %355, %356  : i64
    %358 = llvm.inttoptr %357 : i64 to !llvm.ptr<i64>
    %359 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %360 = llvm.insertvalue %351, %359[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.insertvalue %358, %360[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.insertvalue %362, %361[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.insertvalue %343, %363[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %365 = llvm.insertvalue %344, %364[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(3 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%366 : i64)
  ^bb43(%369: i64):  // 2 preds: ^bb42, ^bb44
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %371 = llvm.extractvalue %327[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.getelementptr %371[%369] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %373 = llvm.load %372 : !llvm.ptr<i1>
    %374 = llvm.extractvalue %259[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.getelementptr %374[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %376 = llvm.load %375 : !llvm.ptr<i64>
    %377 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.getelementptr %377[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %379 = llvm.load %378 : !llvm.ptr<i64>
    %380 = llvm.select %373, %376, %379 : i1, i64
    %381 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.getelementptr %381[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %380, %382 : !llvm.ptr<i64>
    %383 = llvm.add %369, %368  : i64
    llvm.br ^bb43(%383 : i64)
  ^bb45:  // pred: ^bb43
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.null : !llvm.ptr<i64>
    %389 = llvm.getelementptr %388[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %390 = llvm.ptrtoint %389 : !llvm.ptr<i64> to i64
    %391 = llvm.mlir.constant(16 : index) : i64
    %392 = llvm.add %390, %391  : i64
    %393 = llvm.call @malloc(%392) : (i64) -> !llvm.ptr<i8>
    %394 = llvm.bitcast %393 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %395 = llvm.ptrtoint %394 : !llvm.ptr<i64> to i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.sub %391, %396  : i64
    %398 = llvm.add %395, %397  : i64
    %399 = llvm.urem %398, %391  : i64
    %400 = llvm.sub %398, %399  : i64
    %401 = llvm.inttoptr %400 : i64 to !llvm.ptr<i64>
    %402 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %403 = llvm.insertvalue %394, %402[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %404 = llvm.insertvalue %401, %403[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.insertvalue %405, %404[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %407 = llvm.insertvalue %384, %406[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %408 = llvm.insertvalue %385, %407[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %409 = llvm.insertvalue %386, %408[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %410 = llvm.insertvalue %385, %409[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %411 = llvm.insertvalue %386, %410[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %412 = llvm.insertvalue %387, %411[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%413 : i64)
  ^bb46(%416: i64):  // 2 preds: ^bb45, ^bb53
    %417 = llvm.icmp "slt" %416, %414 : i64
    llvm.cond_br %417, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%418 : i64)
  ^bb48(%421: i64):  // 2 preds: ^bb47, ^bb52
    %422 = llvm.icmp "slt" %421, %419 : i64
    llvm.cond_br %422, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%423 : i64)
  ^bb50(%426: i64):  // 2 preds: ^bb49, ^bb51
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %428 = llvm.extractvalue %165[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %429 = llvm.add %16, %16  : i64
    %430 = llvm.add %429, %16  : i64
    %431 = llvm.getelementptr %428[%430] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %432 = llvm.load %431 : !llvm.ptr<i64>
    %433 = llvm.extractvalue %412[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %434 = llvm.add %416, %421  : i64
    %435 = llvm.add %434, %426  : i64
    %436 = llvm.getelementptr %433[%435] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %432, %436 : !llvm.ptr<i64>
    %437 = llvm.add %426, %425  : i64
    llvm.br ^bb50(%437 : i64)
  ^bb52:  // pred: ^bb50
    %438 = llvm.add %421, %420  : i64
    llvm.br ^bb48(%438 : i64)
  ^bb53:  // pred: ^bb48
    %439 = llvm.add %416, %415  : i64
    llvm.br ^bb46(%439 : i64)
  ^bb54:  // pred: ^bb46
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    %445 = llvm.mlir.null : !llvm.ptr<i32>
    %446 = llvm.getelementptr %445[%440] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %447 = llvm.ptrtoint %446 : !llvm.ptr<i32> to i64
    %448 = llvm.mlir.constant(16 : index) : i64
    %449 = llvm.add %447, %448  : i64
    %450 = llvm.call @malloc(%449) : (i64) -> !llvm.ptr<i8>
    %451 = llvm.bitcast %450 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %452 = llvm.ptrtoint %451 : !llvm.ptr<i32> to i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.sub %448, %453  : i64
    %455 = llvm.add %452, %454  : i64
    %456 = llvm.urem %455, %448  : i64
    %457 = llvm.sub %455, %456  : i64
    %458 = llvm.inttoptr %457 : i64 to !llvm.ptr<i32>
    %459 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %460 = llvm.insertvalue %451, %459[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %458, %460[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.insertvalue %462, %461[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %440, %463[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %441, %464[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %442, %465[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %443, %466[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %441, %467[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %442, %468[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %443, %469[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %444, %470[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%472 : i64)
  ^bb55(%475: i64):  // 2 preds: ^bb54, ^bb65
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%477 : i64)
  ^bb57(%480: i64):  // 2 preds: ^bb56, ^bb64
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%482 : i64)
  ^bb59(%485: i64):  // 2 preds: ^bb58, ^bb63
    %486 = llvm.icmp "slt" %485, %483 : i64
    llvm.cond_br %486, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %487 = llvm.mlir.constant(0 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%487 : i64)
  ^bb61(%490: i64):  // 2 preds: ^bb60, ^bb62
    %491 = llvm.icmp "slt" %490, %488 : i64
    llvm.cond_br %491, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %492 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.add %475, %480  : i64
    %494 = llvm.add %493, %485  : i64
    %495 = llvm.add %494, %490  : i64
    %496 = llvm.getelementptr %492[%495] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %497 = llvm.load %496 : !llvm.ptr<i32>
    %498 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.add %475, %480  : i64
    %500 = llvm.add %499, %485  : i64
    %501 = llvm.add %500, %490  : i64
    %502 = llvm.getelementptr %498[%501] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %503 = llvm.load %502 : !llvm.ptr<i32>
    %504 = llvm.icmp "sgt" %497, %503 : i32
    %505 = llvm.select %504, %497, %503 : i1, i32
    %506 = llvm.extractvalue %471[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.add %475, %480  : i64
    %508 = llvm.add %507, %485  : i64
    %509 = llvm.add %508, %490  : i64
    %510 = llvm.getelementptr %506[%509] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %505, %510 : !llvm.ptr<i32>
    %511 = llvm.add %490, %489  : i64
    llvm.br ^bb61(%511 : i64)
  ^bb63:  // pred: ^bb61
    %512 = llvm.add %485, %484  : i64
    llvm.br ^bb59(%512 : i64)
  ^bb64:  // pred: ^bb59
    %513 = llvm.add %480, %479  : i64
    llvm.br ^bb57(%513 : i64)
  ^bb65:  // pred: ^bb57
    %514 = llvm.add %475, %474  : i64
    llvm.br ^bb55(%514 : i64)
  ^bb66:  // pred: ^bb55
    %515 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %516 = llvm.insertvalue %412, %515[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %517 = llvm.insertvalue %471, %516[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %517 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %86[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %109 : !llvm.ptr<ptr<i8>>
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

